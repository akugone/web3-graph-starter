import { newMockEvent } from "matchstick-as"
import { ethereum } from "@graphprotocol/graph-ts"
import { DataSet } from "../generated/Storage/Storage"

export function createDataSetEvent(data: string): DataSet {
  let dataSetEvent = changetype<DataSet>(newMockEvent())

  dataSetEvent.parameters = new Array()

  dataSetEvent.parameters.push(
    new ethereum.EventParam("data", ethereum.Value.fromString(data))
  )

  return dataSetEvent
}
