.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1539
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1542
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1543
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1545
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1546
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1547
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1550
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1551
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_2

    .line 1552
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1557
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 1555
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1187
    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v0, :cond_0

    .line 1188
    packed-switch p1, :pswitch_data_0

    .line 1238
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1189
    :pswitch_0
    const-string v0, "ACT-LAUNCH_ACTIVITY"

    goto :goto_0

    .line 1190
    :pswitch_1
    const-string v0, "ACT-PAUSE_ACTIVITY"

    goto :goto_0

    .line 1191
    :pswitch_2
    const-string v0, "ACT-PAUSE_ACTIVITY_FINISHING"

    goto :goto_0

    .line 1192
    :pswitch_3
    const-string v0, "ACT-STOP_ACTIVITY_SHOW"

    goto :goto_0

    .line 1193
    :pswitch_4
    const-string v0, "ACT-STOP_ACTIVITY_HIDE"

    goto :goto_0

    .line 1194
    :pswitch_5
    const-string v0, "ACT-SHOW_WINDOW"

    goto :goto_0

    .line 1195
    :pswitch_6
    const-string v0, "ACT-HIDE_WINDOW"

    goto :goto_0

    .line 1196
    :pswitch_7
    const-string v0, "ACT-RESUME_ACTIVITY"

    goto :goto_0

    .line 1197
    :pswitch_8
    const-string v0, "SEND_RESULT"

    goto :goto_0

    .line 1198
    :pswitch_9
    const-string v0, "ACT-DESTROY_ACTIVITY"

    goto :goto_0

    .line 1199
    :pswitch_a
    const-string v0, "BIND_APPLICATION"

    goto :goto_0

    .line 1200
    :pswitch_b
    const-string v0, "EXIT_APPLICATION"

    goto :goto_0

    .line 1201
    :pswitch_c
    const-string v0, "ACT-NEW_INTENT"

    goto :goto_0

    .line 1202
    :pswitch_d
    const-string v0, "BDC-RECEIVER"

    goto :goto_0

    .line 1203
    :pswitch_e
    const-string v0, "SVC-CREATE_SERVICE"

    goto :goto_0

    .line 1204
    :pswitch_f
    const-string v0, "SVC-SERVICE_ARGS"

    goto :goto_0

    .line 1205
    :pswitch_10
    const-string v0, "SVC-STOP_SERVICE"

    goto :goto_0

    .line 1206
    :pswitch_11
    const-string v0, "REQUEST_THUMBNAIL"

    goto :goto_0

    .line 1207
    :pswitch_12
    const-string v0, "CONFIGURATION_CHANGED"

    goto :goto_0

    .line 1208
    :pswitch_13
    const-string v0, "CLEAN_UP_CONTEXT"

    goto :goto_0

    .line 1209
    :pswitch_14
    const-string v0, "GC_WHEN_IDLE"

    goto :goto_0

    .line 1210
    :pswitch_15
    const-string v0, "SVC-BIND_SERVICE"

    goto :goto_0

    .line 1211
    :pswitch_16
    const-string v0, "SVC-UNBIND_SERVICE"

    goto :goto_0

    .line 1212
    :pswitch_17
    const-string v0, "SVC-DUMP_SERVICE"

    goto :goto_0

    .line 1213
    :pswitch_18
    const-string v0, "LOW_MEMORY"

    goto :goto_0

    .line 1214
    :pswitch_19
    const-string v0, "ACT-ACTIVITY_CONFIGURATION_CHANGED"

    goto :goto_0

    .line 1215
    :pswitch_1a
    const-string v0, "ACT-RELAUNCH_ACTIVITY"

    goto :goto_0

    .line 1216
    :pswitch_1b
    const-string v0, "PROFILER_CONTROL"

    goto :goto_0

    .line 1217
    :pswitch_1c
    const-string v0, "CREATE_BACKUP_AGENT"

    goto :goto_0

    .line 1218
    :pswitch_1d
    const-string v0, "DESTROY_BACKUP_AGENT"

    goto :goto_0

    .line 1219
    :pswitch_1e
    const-string v0, "SUICIDE"

    goto :goto_0

    .line 1220
    :pswitch_1f
    const-string v0, "REMOVE_PROVIDER"

    goto :goto_0

    .line 1221
    :pswitch_20
    const-string v0, "ENABLE_JIT"

    goto :goto_0

    .line 1222
    :pswitch_21
    const-string v0, "DISPATCH_PACKAGE_BROADCAST"

    goto :goto_0

    .line 1223
    :pswitch_22
    const-string v0, "SCHEDULE_CRASH"

    goto :goto_0

    .line 1224
    :pswitch_23
    const-string v0, "DUMP_HEAP"

    goto :goto_0

    .line 1225
    :pswitch_24
    const-string v0, "DUMP_ACTIVITY"

    goto :goto_0

    .line 1226
    :pswitch_25
    const-string v0, "SLEEPING"

    goto :goto_0

    .line 1227
    :pswitch_26
    const-string v0, "SET_CORE_SETTINGS"

    goto :goto_0

    .line 1228
    :pswitch_27
    const-string v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    goto :goto_0

    .line 1229
    :pswitch_28
    const-string v0, "TRIM_MEMORY"

    goto :goto_0

    .line 1230
    :pswitch_29
    const-string v0, "DUMP_PROVIDER"

    goto :goto_0

    .line 1231
    :pswitch_2a
    const-string v0, "UNSTABLE_PROVIDER_DIED"

    goto/16 :goto_0

    .line 1232
    :pswitch_2b
    const-string v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    goto/16 :goto_0

    .line 1233
    :pswitch_2c
    const-string v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    goto/16 :goto_0

    .line 1234
    :pswitch_2d
    const-string v0, "INSTALL_PROVIDER"

    goto/16 :goto_0

    .line 1188
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v12, 0x1040

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v10, 0x40

    .line 1298
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1531
    :goto_0
    sget-boolean v5, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v5, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Landroid/app/ActivityThread$H;->isDebuggableMessage(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1532
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v7}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " handled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_0
    return-void

    .line 1301
    :pswitch_0
    sget-boolean v5, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-ne v6, v5, :cond_1

    sget-boolean v5, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v5, :cond_1

    sget-boolean v5, Landroid/app/ActivityThread;->mTraceEnabled:Z

    if-nez v5, :cond_1

    .line 1303
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v5, "/proc/mtprof/status"

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v3, "fprofsts_in":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/16 v6, 0x33

    if-ne v5, v6, :cond_1

    .line 1305
    const-string v5, "ActivityThread"

    const-string/jumbo v6, "start Profiling for empty process"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const/4 v5, 0x1

    sput-boolean v5, Landroid/app/ActivityThread;->mTraceEnabled:Z

    .line 1307
    const-string v5, "/data/data/applaunch"

    invoke-static {v5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1316
    .end local v3    # "fprofsts_in":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    const-string v5, "activityStart"

    invoke-static {v12, v13, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1317
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1319
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v5, v6, v7}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v5

    iput-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1321
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v5, v4, v8}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    .line 1322
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1309
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catch_0
    move-exception v2

    .line 1310
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v5, "ActivityThread"

    const-string/jumbo v6, "mtprof entry can not be found"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1311
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 1312
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "ActivityThread"

    const-string/jumbo v6, "mtprof entry open failed"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1325
    .end local v2    # "e":Ljava/io/IOException;
    :pswitch_1
    const-string v5, "activityRestart"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1326
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1327
    .restart local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1328
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1331
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string v5, "activityPause"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1332
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_2

    :goto_2
    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v5, v7, v6, v9}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1333
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1334
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_2
    move v6, v7

    .line 1332
    goto :goto_2

    .line 1337
    :pswitch_3
    const-string v5, "activityPause"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1338
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_3

    move v7, v6

    :cond_3
    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v5, v6, v7, v9}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1339
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1342
    :pswitch_4
    const-string v5, "activityStop"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1343
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v7, v5, v6, v8}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1344
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1347
    :pswitch_5
    const-string v5, "activityStop"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1348
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v5, v7, v8}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1349
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1352
    :pswitch_6
    const-string v5, "activityShowWindow"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1353
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v7, v5, v6}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1354
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1357
    :pswitch_7
    const-string v5, "activityHideWindow"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1358
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5, v7}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1359
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1362
    :pswitch_8
    const-string v5, "activityResume"

    invoke-static {v12, v13, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1363
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_4

    move v7, v6

    :cond_4
    invoke-virtual {v8, v5, v6, v7, v6}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    .line 1365
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1368
    :pswitch_9
    const-string v5, "activityDeliverResult"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1369
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$ResultData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1370
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1373
    :pswitch_a
    const-string v5, "activityDestroy"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1374
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_5

    :goto_3
    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v5, v6, v9, v7}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1376
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_5
    move v6, v7

    .line 1374
    goto :goto_3

    .line 1379
    :pswitch_b
    const-string v5, "bindApplication"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1380
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$AppBindData;

    .line 1381
    .local v1, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v5, v1}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1382
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1385
    .end local v1    # "data":Landroid/app/ActivityThread$AppBindData;
    :pswitch_c
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v5, :cond_6

    .line 1386
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->onTerminate()V

    .line 1388
    :cond_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1391
    :pswitch_d
    const-string v5, "activityNewIntent"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1392
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$NewIntentData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1393
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1396
    :pswitch_e
    const-string v5, "broadcastReceiveComp"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1397
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1398
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1399
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1402
    :pswitch_f
    const-string/jumbo v5, "serviceCreate"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1403
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1404
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1407
    :pswitch_10
    const-string/jumbo v5, "serviceBind"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1408
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1409
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1412
    :pswitch_11
    const-string/jumbo v5, "serviceUnbind"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1413
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1414
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1417
    :pswitch_12
    const-string/jumbo v5, "serviceStart"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1418
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1419
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1422
    :pswitch_13
    const-string/jumbo v5, "serviceStop"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1423
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1424
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1425
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1428
    :pswitch_14
    const-string/jumbo v5, "requestThumbnail"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1429
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1430
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1433
    :pswitch_15
    const-string v5, "configChanged"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1434
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    iput v5, v6, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 1435
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/Configuration;

    invoke-virtual {v6, v5, v8}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1436
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1439
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1440
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v5, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v6, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v7, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1443
    .end local v0    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1446
    :pswitch_18
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1449
    :pswitch_19
    const-string v5, "lowMemory"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1450
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1451
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1454
    :pswitch_1a
    const-string v5, "activityConfigChanged"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1455
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 1456
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1459
    :pswitch_1b
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_7

    :goto_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$ProfilerControlData;

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v6, v5, v7}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;I)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto :goto_4

    .line 1462
    :pswitch_1c
    const-string v5, "backupCreateAgent"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1463
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1464
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1467
    :pswitch_1d
    const-string v5, "backupDestroyAgent"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1468
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1469
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1472
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1475
    :pswitch_1f
    const-string/jumbo v5, "providerRemove"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1476
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v6, v5}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1477
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1480
    :pswitch_20
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1483
    :pswitch_21
    const-string v5, "broadcastPackage"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1484
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1485
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1488
    :pswitch_22
    new-instance v6, Landroid/app/RemoteServiceException;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1490
    :pswitch_23
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_8

    :goto_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_8
    move v6, v7

    goto :goto_5

    .line 1493
    :pswitch_24
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1496
    :pswitch_25
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1499
    :pswitch_26
    const-string/jumbo v5, "sleeping"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1500
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_9

    :goto_6
    invoke-static {v8, v5, v6}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1501
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_9
    move v6, v7

    .line 1500
    goto :goto_6

    .line 1504
    :pswitch_27
    const-string/jumbo v5, "setCoreSettings"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1505
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1506
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1509
    :pswitch_28
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v6, v5}, Landroid/app/ActivityThread;->access$3100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1512
    :pswitch_29
    const-string/jumbo v5, "trimMemory"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1513
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1514
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1517
    :pswitch_2a
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {v6, v5, v7}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1520
    :pswitch_2b
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v6, v5}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_0

    .line 1523
    :pswitch_2c
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v6, :cond_a

    :goto_7
    invoke-virtual {v8, v5, v6}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_a
    move v6, v7

    goto :goto_7

    .line 1526
    :pswitch_2d
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v6, v5}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_0

    .line 1298
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_25
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method isDebuggableMessage(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1243
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1291
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1261
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1262
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1263
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 1264
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 1267
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 1271
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 1272
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 1273
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 1274
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 1275
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 1276
    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 1277
    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 1278
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 1279
    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 1280
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 1281
    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 1282
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 1283
    goto :goto_0

    :pswitch_13
    move v0, v1

    .line 1284
    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 1285
    goto :goto_0

    :pswitch_15
    move v0, v1

    .line 1286
    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 1287
    goto :goto_0

    :pswitch_17
    move v0, v1

    .line 1288
    goto :goto_0

    :pswitch_18
    move v0, v1

    .line 1289
    goto :goto_0

    .line 1243
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
