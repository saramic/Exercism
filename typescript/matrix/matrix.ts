export class Matrix {
  readonly rows: number[][]
  readonly columns: number[][]

  constructor(matrixStr: string) {
    this.rows = matrixStr
      .split("\n")
      .map((rowStr) => rowStr.split(" ").map(Number))

    this.columns = this
      .rows[0]
      .map((_, rowIndex) => this.rows.map((row) => row[rowIndex]));
  }
}
