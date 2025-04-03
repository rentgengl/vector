
CREATE TABLE logs.call
(
    `ts` DateTime, `duration` Int32,
    `name` String, `depth` Int32,`level` String,
    `process` String, `p_processName` String, `OSThread` Int32,
    `t_clientID` Int32, `t_applicationName` String, `t_computerName` String,
    `callWait` Int32, `first` Int32, `Interface` String,
    `IName` String, `Method` String, `CallID` Int32,
    `MName` String, `Memory` Int32, `MemoryPeak` Int32,
    `InBytes` Int32,`OutBytes` Int32,`CpuTime` Int32
)
ENGINE = MergeTree
ORDER BY ts
SETTINGS index_granularity = 8192;