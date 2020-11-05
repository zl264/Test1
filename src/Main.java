import java.util.*;

public class Main {


    public static void main(String[] args) {
        List<String> a = new ArrayList<>();
        a.add("hot");
        a.add("dot");
        a.add("dog");
        a.add("log");
        a.add("cog");

        ladderLength("hit","cog",a);
    }

    public static int ladderLength(String beginWord, String endWord, List<String> wordList) {
        if(!wordList.contains(endWord)||beginWord.length()!=endWord.length()){
            return 0;
        }
        boolean flag1 = true;
        int count = 0;
        while(!beginWord.equals(endWord)&&flag1){
            flag1 = false;
            for(int i=0;i<wordList.size();i++){
                if(isTransform(beginWord,wordList.get(i))){
                    beginWord = wordList.get(i);
                    flag1 = true;
                    wordList.remove(beginWord);
                    count++;
                    break;
                }
            }
        }
        return beginWord.equals(endWord)?count:0;
    }


    public static boolean isTransform(String a,String b){
        int count = 0;
        for(int i=0;i<a.length()&&count<2;i++){
            if(a.charAt(i)!=b.charAt(i)){
                count++;
            }
        }
        return count==1;
    }





}
