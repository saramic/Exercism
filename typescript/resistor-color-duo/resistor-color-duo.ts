export const COLORS: string[] = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white',
]

export function decodedValue(bands: string[]) {
  return parseInt(
    bands
      .splice(0, 2)
      .map((band) => COLORS.indexOf(band))
      .join("")
  )
}
