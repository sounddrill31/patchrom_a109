.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# instance fields
.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceOom:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

.field bindAppMemUsage:J

.field cached:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashDialog:Landroid/app/Dialog;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcState:I

.field curRawAdj:I

.field curReceiver:Lcom/android/server/am/BroadcastRecord;

.field curSchedGroup:I

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field debugging:Z

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field forceCrashReport:Z

.field forcingToForeground:Landroid/os/IBinder;

.field foregroundActivities:Z

.field foregroundServices:Z

.field hasAboveClient:Z

.field hasClientActivities:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instrumentationArguments:Landroid/os/Bundle;

.field instrumentationClass:Landroid/content/ComponentName;

.field instrumentationInfo:Landroid/content/pm/ApplicationInfo;

.field instrumentationProfileFile:Ljava/lang/String;

.field instrumentationResultClass:Landroid/content/ComponentName;

.field instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field final isolated:Z

.field keeping:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastWakeTime:J

.field lruSeq:I

.field private final mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field maxAdj:I

.field memImportance:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingUiClean:Z

.field persistent:Z

.field pid:I

.field final pkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field procStateChanged:Z

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field repProcState:I

.field reportLowMemory:Z

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setIsForeground:Z

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field trimMemoryLevel:I

.field final uid:I

.field final userId:I

.field usingWrapper:Z

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 5
    .param p1, "_batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"    # Ljava/lang/String;
    .param p4, "_uid"    # I

    .prologue
    const/16 v4, -0x64

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 80
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 81
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    .line 82
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 83
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 138
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 365
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 366
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 367
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 368
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 369
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 370
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 373
    iput v4, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v4, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    .line 374
    iput v4, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 375
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 376
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 378
    return-void

    :cond_0
    move v0, v1

    .line 367
    goto :goto_0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    .line 576
    .local v0, "state":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, v1, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 583
    .end local v0    # "state":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 585
    :goto_1
    return v1

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 176
    .local v1, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "user #"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 177
    const-string v7, " uid="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 178
    iget v7, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v7, v8, :cond_0

    .line 179
    const-string v7, " ISOLATED uid="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 181
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 182
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "class="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 186
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "manageSpaceActivityName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "dir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    const-string v7, " publicDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    const-string v7, " data="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "packageList={"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 194
    if-lez v0, :cond_3

    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_4
    const-string v7, "}"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "compat="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 199
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    if-eqz v7, :cond_6

    .line 201
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "instrumentationClass="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 203
    const-string v7, " instrumentationProfileFile="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "instrumentationArguments="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "instrumentationInfo="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 209
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_6

    .line 210
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v8, Landroid/util/PrintWriterPrinter;

    invoke-direct {v8, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 213
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "thread="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "pid="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " starting="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "lastActivityTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 218
    const-string v7, " lastPssTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 220
    const-string v7, " nextPssTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 222
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "adjSeq="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 224
    const-string v7, " lruSeq="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 225
    const-string v7, " lastPss="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 226
    const-string v7, " lastCachedPss="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "keeping="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->keeping:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 228
    const-string v7, " cached="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 229
    const-string v7, " empty="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 230
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v7, :cond_7

    .line 231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "serviceb="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 232
    const-string v7, " serviceHighRam="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 234
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v7, :cond_8

    .line 235
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "notCachedSinceIdle="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 236
    const-string v7, " initialIdlePss="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 238
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "oom: max="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 239
    const-string v7, " curRaw="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 240
    const-string v7, " setRaw="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 241
    const-string v7, " cur="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    const-string v7, " set="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curSchedGroup="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    const-string v7, " setSchedGroup="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 245
    const-string v7, " systemNoUi="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 246
    const-string v7, " trimMemoryLevel="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 247
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curProcState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 248
    const-string v7, " repProcState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 249
    const-string v7, " pssProcState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 250
    const-string v7, " setProcState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 251
    const-string v7, " lastStateTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 253
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 254
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v7, :cond_a

    .line 255
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "hasShownUi="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 256
    const-string v7, " pendingUiClean="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 257
    const-string v7, " hasAboveClient="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 259
    :cond_a
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    if-eqz v7, :cond_c

    .line 260
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "setIsForeground="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 261
    const-string v7, " foregroundServices="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 262
    const-string v7, " forcingToForeground="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 264
    :cond_c
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v7, :cond_e

    .line 265
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "persistent="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 266
    const-string v7, " removed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 268
    :cond_e
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v7, :cond_f

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-eqz v7, :cond_10

    .line 269
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "hasClientActivities="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 270
    const-string v7, " foregroundActivities="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 272
    :cond_10
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v7, :cond_11

    .line 273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "hasStartedServices="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 275
    :cond_11
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->keeping:Z

    if-nez v7, :cond_12

    .line 277
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 278
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v10, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J

    move-result-wide v5

    .line 280
    .local v5, "wtime":J
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    sub-long v3, v5, v7

    .line 282
    .local v3, "timeUsed":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "lastWakeTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 283
    const-string v7, " timeUsed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "lastCpuTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 286
    const-string v7, " timeUsed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v9, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .end local v3    # "timeUsed":J
    .end local v5    # "wtime":J
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "lastRequestedGc="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 291
    const-string v7, " lastLowMemory="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 293
    const-string v7, " reportLowMemory="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 294
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v7, :cond_14

    .line 295
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "killedByAm="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 296
    const-string v7, " waitingToKill="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    :cond_14
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-nez v7, :cond_15

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v7, :cond_15

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v7, :cond_15

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v7, :cond_15

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v7, :cond_15

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v7, :cond_17

    .line 300
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "debugging="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 301
    const-string v7, " crashing="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 302
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 303
    const-string v7, " notResponding="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 304
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 305
    const-string v7, " bad="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 308
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v7, :cond_16

    .line 309
    const-string v7, " errorReportReceiver="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    :cond_16
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 314
    :cond_17
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_18

    .line 315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Activities:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_18

    .line 317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 320
    :cond_18
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_19

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Services:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_19

    .line 323
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 326
    :cond_19
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_1a

    .line 327
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Executing Services (fg="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_1a

    .line 330
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 333
    :cond_1a
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_1b

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Connections:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x0

    :goto_4
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_1b

    .line 336
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 339
    :cond_1b
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_1c

    .line 340
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Published Providers:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    :goto_5
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_1c

    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "    -> "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 346
    :cond_1c
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1d

    .line 347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Connected Providers:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    :goto_6
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1d

    .line 349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v7}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 352
    :cond_1d
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v7, :cond_1e

    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curReceiver="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 355
    :cond_1e
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_1f

    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Receivers:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    :goto_7
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_1f

    .line 358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 361
    :cond_1f
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 598
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    if-le v0, p1, :cond_0

    .line 599
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 601
    :cond_0
    return-void
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 635
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 636
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 637
    const/4 v1, 0x0

    .line 643
    :cond_0
    return-object v1

    .line 639
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 640
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 641
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSetAdjWithServices()I
    .locals 2

    .prologue
    .line 589
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 590
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_0

    .line 591
    const/16 v0, 0x8

    .line 594
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    goto :goto_0
.end method

.method public isInterestingToUserLocked()Z
    .locals 4

    .prologue
    .line 437
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 438
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 439
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 440
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    const/4 v3, 0x1

    .line 444
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v3

    .line 438
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 8
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_3

    .line 388
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 389
    .local v0, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v0, :cond_0

    .line 390
    const/4 v1, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 392
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 396
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 397
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 399
    .local v7, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v7, :cond_1

    if-eq v7, v0, :cond_1

    .line 400
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v7

    .line 403
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v7, v1, :cond_2

    .line 404
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6, v7}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 397
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v6    # "i":I
    .end local v7    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 410
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 545
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :goto_0
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    .line 555
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object v1

    .line 548
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 551
    :cond_2
    const-string v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 558
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 559
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 561
    :cond_4
    const-string v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 565
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 9
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v8, 0x0

    .line 413
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 414
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 415
    .local v0, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v0, :cond_2

    .line 416
    if-eqz v0, :cond_0

    .line 417
    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 419
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 421
    :cond_0
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 422
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 424
    .local v7, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v7, :cond_1

    if-eq v7, v0, :cond_1

    .line 425
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6, v8}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 422
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 430
    .end local v6    # "i":I
    .end local v7    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    return-void
.end method

.method modifyRawOomAdj(I)I
    .locals 1
    .param p1, "adj"    # I

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v0, :cond_0

    .line 480
    if-gez p1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return p1

    .line 482
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 483
    const/4 p1, 0x1

    goto :goto_0

    .line 484
    :cond_2
    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    .line 485
    const/4 p1, 0x2

    goto :goto_0

    .line 486
    :cond_3
    const/16 v0, 0x9

    if-ge p1, v0, :cond_4

    .line 487
    const/16 p1, 0x9

    goto :goto_0

    .line 488
    :cond_4
    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 489
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v9, 0x1

    .line 607
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 608
    .local v6, "N":I
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v0, :cond_3

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 610
    .local v3, "now":J
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 612
    if-eq v6, v9, :cond_2

    .line 613
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 615
    .local v8, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v8, v0, :cond_0

    .line 616
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 613
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 620
    .end local v8    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 621
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v8

    .line 623
    .restart local v8    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v8, v0, :cond_2

    .line 625
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 632
    .end local v3    # "now":J
    .end local v7    # "i":I
    .end local v8    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    :goto_1
    return-void

    .line 628
    :cond_3
    if-eq v6, v9, :cond_2

    .line 629
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 630
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "_pid"    # I

    .prologue
    const/4 v0, 0x0

    .line 381
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 382
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public stopFreezingAllLocked()V
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 449
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 450
    add-int/lit8 v0, v0, -0x1

    .line 451
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 453
    :cond_0
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 501
    :goto_0
    return-object v1

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 500
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    goto :goto_0
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2710

    .line 505
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v1, v2, :cond_1

    .line 510
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    const/16 v1, 0x75

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 515
    .local v0, "appId":I
    if-lt v0, v2, :cond_2

    .line 516
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    :goto_1
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_0

    .line 523
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 519
    :cond_2
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 539
    :goto_0
    return-object v1

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 534
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 538
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method

.method public unlinkDeathRecipient()V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 459
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 460
    return-void
.end method

.method updateHasAboveClientLocked()V
    .locals 3

    .prologue
    .line 463
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 464
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 466
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 467
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 471
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    return-void

    .line 464
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
