export class Matrix {
  readonly rows: number[][]
  readonly columns: number[][]

  constructor(matrixStr: string) {
    this.rows = [];
    this.columns = [];
    matrixStr
      .split("\n")
      .map((rowStr, rowIndex) => {
          this.rows.push(
            rowStr.split(" ").map((element) => parseInt(element))
          )
          this.rows[rowIndex].map((value, index) => {
            this.columns[index] ??= [];
            this.columns[index].push(value)
          })
      })
  }
}
