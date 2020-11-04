import java.util.*;

public class Main {

    static int n,m;
    static int[][] dp;
    static int[][] nums = new int[][]{{0,1,0,-1},{-1,0,1,0}};
    public static void memorySerach(int fx,int fy,int x,int y,int[][] h){
        if(x<0||x>=n||y<0||y>=n)
            return ;
        if(Math.max(Math.abs(h[fx][fy]-h[x][y]),dp[fx][fy])>=dp[x][y]){
            return ;
        }
        dp[x][y] =  Math.max(Math.abs(h[fx][fy]-h[x][y]),dp[fx][fy]);
        for(int i=0;i<4;i++){
            memorySerach(x,y,x+nums[0][i],y+nums[1][i],h);
        }
        return;
    }
    public static int minimumEffortPath(int[][] heights) {
        n  = heights.length;
        m = heights[0].length;
        dp = new int[n][m];
        for(int i=0;i<n;i++){
            for(int j=0;j<m;j++){
                dp[i][j] = 10000000;
            }
        }
        dp[0][0] = 0;
        for(int i=0;i<4;i++){
            memorySerach(0,0,nums[0][i],nums[1][i],heights);
        }
        return dp[n-1][m-1];
    }
    public static void main(String[] args) {
        insert(new int[][]{{1,3},{6,9}},new int[]{2,5});
    }

    public static int[][] insert(int[][] intervals, int[] newInterval) {
        if(intervals.length==0){
            int[][] a = new int[1][2];
            a[0][0] = newInterval[0];
            a[0][1] = newInterval[1];
            return a;
        }
        List<Integer[]> list = new ArrayList<>();
        for(int i=0;i<intervals.length;i++){
            if(intervals[i][0]<=newInterval[0]&&intervals[i][1]>=newInterval[0]){
                int j = i;
                while(j<intervals.length&&intervals[j][0]<newInterval[1]&&intervals[j][1]<newInterval[1]){
                    j++;
                }
                if(j==intervals.length){
                    list.add(new Integer[]{intervals[i][0],newInterval[1]});
                    break;
                }else if(newInterval[1]<intervals[j][0]){
                    list.add(new Integer[]{intervals[i][0],newInterval[1]});
                    i = j-1;
                }else{
                    list.add(new Integer[]{intervals[i][0],intervals[j][1]});
                    i = j;
                }
            }else if(i<intervals.length&&newInterval[0]<intervals[i][0]){
                int j = i;
                while(j<intervals.length&&intervals[j][0]<newInterval[1]&&intervals[j][1]<newInterval[1]){
                    j++;
                }
                if(j==intervals.length){
                    list.add(new Integer[]{newInterval[0],newInterval[1]});
                    break;
                }else if(newInterval[1]<intervals[j][0]){
                    list.add(new Integer[]{newInterval[0],newInterval[1]});
                    i = j-1;
                }else{
                    list.add(new Integer[]{newInterval[0],intervals[j][1]});
                    i = j;
                }
            }else{
                list.add(new Integer[]{intervals[i][0],intervals[i][1]});
            }
        }
        int[][] a = null;
        if(newInterval[0]>intervals[intervals.length-1][1]){
            a = new int[list.size()+1][2];
            for(int i=0;i<list.size();i++){
                a[i][0] = list.get(i)[0];
                a[i][1] = list.get(i)[1];
            }
            a[a.length-1][0] = newInterval[0];
            a[a.length-1][1] = newInterval[1];

        }else{
            a = new int[list.size()][2];
            for(int i=0;i<list.size();i++){
                a[i][0] = list.get(i)[0];
                a[i][1] = list.get(i)[1];
            }
        }
        return a;
    }


    List<Integer> list = new ArrayList<>();
    public List<Integer> preorderTraversal(TreeNode root) {
        List<TreeNode> list2 = new ArrayList<>();
        list2.add(root);
        TreeNode t = null;
        while(!list2.isEmpty()){
            t = list2.get(list2.size()-1);
            list2.remove(list2.size()-1);
            list.add(t.val);
            if(t.right!=null){
                list2.add(t.right);
            }
            if(t.left!=null){
                list2.add(t.left);
            }
        }
        return list;
    }
}
