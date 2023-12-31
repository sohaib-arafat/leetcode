class Solution {
    List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
        int rows = image.length;
        int cols = image[0].length;
        int oldColor = image[sr][sc];
        
        floodFillRec(image, sr, sc, color, oldColor, rows, cols);
        
        return image;
    }
    
    void floodFillRec(List<List<int>> image, int sr, int sc, int newColor, int oldColor, int rows, int cols) {
        if (sr < 0 || sr >= rows || sc < 0 || sc >= cols || image[sr][sc] != oldColor || image[sr][sc] == newColor) {
            return;
        }    
        image[sr][sc] = newColor; 
        floodFillRec(image, sr - 1, sc, newColor, oldColor, rows, cols);  
        floodFillRec(image, sr + 1, sc, newColor, oldColor, rows, cols);  
        floodFillRec(image, sr, sc - 1, newColor, oldColor, rows, cols);  
        floodFillRec(image, sr, sc + 1, newColor, oldColor, rows, cols);  
    }
}
