export class Matrix {
  readonly matrix: number[][] = [];
  readonly matrixCols: number[][] = [];

  constructor(matrixStr: string) {
    matrixStr
      .split("\n")
      .map((rowStr, rowIndex) => {
          this.matrix.push(
            rowStr.split(" ").map((element) => parseInt(element))
          )
          this.matrix[rowIndex].map((value, index) => {
            this.matrixCols[index] ??= [];
            this.matrixCols[index].push(value)
          })
      })
  }

  get rows(): number[][] {
    return this.matrix
  }

  get columns(): number[][] {
    return this.matrixCols
  }
}
