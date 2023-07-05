.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final IS_USER_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static final isLteDcSupport:Z

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 167
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 169
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 170
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    .end local v1    # "fbp":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1484
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1487
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1488
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, "ret":Landroid/content/ComponentName;
    const-string v1, "ANR_DEBUG"

    const-string v2, "=== Start BadService2 ==="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.badservicesysserver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_0

    .line 1475
    const-string v1, "ANR_DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== result to start BadService2 === Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :goto_0
    return-object v0

    .line 1477
    :cond_0
    const-string v1, "ANR_DEBUG"

    const-string v2, "=== result to start BadService2 === Name: Null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public initAndLoop()V
    .locals 184

    .prologue
    .line 181
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 184
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 185
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 189
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 192
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 193
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 197
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v154

    .line 199
    .local v154, "shutdownAction":Ljava/lang/String;
    if-eqz v154, :cond_0

    invoke-virtual/range {v154 .. v154}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 200
    const/4 v7, 0x0

    move-object/from16 v0, v154

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_27

    const/16 v147, 0x1

    .line 203
    .local v147, "reboot":Z
    :goto_0
    invoke-virtual/range {v154 .. v154}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_28

    .line 204
    const/4 v7, 0x1

    invoke-virtual/range {v154 .. v154}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v154

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v146

    .line 209
    .local v146, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v147

    move-object/from16 v1, v146

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 213
    .end local v146    # "reason":Ljava/lang/String;
    .end local v147    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 214
    .local v111, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v111

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/16 v110, 0x0

    .line 216
    .local v110, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 218
    .local v34, "headless":Z
    const/16 v117, 0x0

    .line 219
    .local v117, "installer":Lcom/android/server/pm/Installer;
    const/16 v71, 0x0

    .line 220
    .local v71, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v90, 0x0

    .line 221
    .local v90, "contentService":Lcom/android/server/content/ContentService;
    const/16 v119, 0x0

    .line 222
    .local v119, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 223
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v104, 0x0

    .line 224
    .local v104, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v80, 0x0

    .line 225
    .local v80, "battery":Lcom/android/server/BatteryService;
    const/16 v173, 0x0

    .line 226
    .local v173, "vibrator":Lcom/android/server/VibratorService;
    const/16 v74, 0x0

    .line 227
    .local v74, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v129, 0x0

    .line 228
    .local v129, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 229
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 230
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v132, 0x0

    .line 231
    .local v132, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v86, 0x0

    .line 232
    .local v86, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v180, 0x0

    .line 233
    .local v180, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v178, 0x0

    .line 234
    .local v178, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v153, 0x0

    .line 235
    .local v153, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v142, 0x0

    .line 236
    .local v142, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 237
    .local v5, "context":Landroid/content/Context;
    const/16 v182, 0x0

    .line 238
    .local v182, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v81, 0x0

    .line 240
    .local v81, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v69, 0x0

    .line 241
    .local v69, "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    const/16 v105, 0x0

    .line 242
    .local v105, "dock":Lcom/android/server/DockObserver;
    const/16 v171, 0x0

    .line 243
    .local v171, "usb":Lcom/android/server/usb/UsbService;
    const/16 v151, 0x0

    .line 244
    .local v151, "serial":Lcom/android/server/SerialService;
    const/16 v167, 0x0

    .line 245
    .local v167, "twilight":Lcom/android/server/TwilightService;
    const/16 v169, 0x0

    .line 246
    .local v169, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v148, 0x0

    .line 247
    .local v148, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v134, 0x0

    .line 248
    .local v134, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v83, 0x0

    .line 249
    .local v83, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v116, 0x0

    .line 250
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v157, 0x0

    .line 252
    .local v157, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v159, 0x0

    .line 253
    .local v159, "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    const/16 v161, 0x0

    .line 254
    .local v161, "telephonyRegistry3":Lcom/android/server/TelephonyRegistry;
    const/16 v162, 0x0

    .line 255
    .local v162, "telephonyRegistry4":Lcom/android/server/TelephonyRegistry;
    const/16 v88, 0x0

    .line 257
    .local v88, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v163, 0x0

    .line 259
    .local v163, "telephonyRegistryLteDc":Lcom/android/server/TelephonyRegistry;
    const/16 v128, 0x0

    .line 262
    .local v128, "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    const/16 v113, 0x0

    .line 265
    .local v113, "hdmiManager":Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    new-instance v183, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v183

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 266
    .local v183, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v183 .. v183}, Landroid/os/HandlerThread;->start()V

    .line 267
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v183 .. v183}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 268
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    const/16 v24, 0x0

    .line 286
    .local v24, "onlyCore":Z
    const/16 v112, 0x0

    .line 291
    .local v112, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v118, Lcom/android/server/pm/Installer;

    invoke-direct/range {v118 .. v118}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6f

    .line 293
    .end local v117    # "installer":Lcom/android/server/pm/Installer;
    .local v118, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/pm/Installer;->ping()Z

    .line 296
    sget-boolean v7, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_1

    .line 298
    const/16 v131, 0x0

    .line 301
    .local v131, "msgMonitorService":Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :try_start_2
    const-class v7, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    move-object/from16 v131, v0

    .line 302
    const-string v7, "SystemServer"

    const-string v9, "Create message monitor service successfully ."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 307
    :goto_3
    :try_start_3
    const-string v7, "msgmonitorservice"

    invoke-interface/range {v131 .. v131}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 315
    .end local v131    # "msgMonitorService":Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :cond_1
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 317
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v143, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v143 .. v143}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 319
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v143, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_5
    const-string v7, "power"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static/range {v110 .. v110}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_70

    move-result-object v5

    move-object/from16 v4, v143

    .end local v143    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v117, v118

    .line 328
    .end local v118    # "installer":Lcom/android/server/pm/Installer;
    .restart local v117    # "installer":Lcom/android/server/pm/Installer;
    :goto_5
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v101

    .line 329
    .local v101, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 330
    .local v98, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 331
    .local v96, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v103

    .line 332
    .local v103, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 333
    .local v97, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v102

    .line 334
    .local v102, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v100

    .line 335
    .local v100, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 338
    .local v99, "disableNetwork":Z
    :try_start_6
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_64

    .line 340
    .end local v104    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_7
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 345
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "SystemInterface Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v124, Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;-><init>(Landroid/content/Context;)V

    .line 347
    .local v124, "mSystemInterface":Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    sget-object v7, Lcom/yulong/android/server/systeminterface/SystemManager;->SYS_SERVICE:Ljava/lang/String;

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 354
    .end local v124    # "mSystemInterface":Lcom/yulong/android/server/systeminterface/SystemInterfaceImpl;
    :goto_6
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v158, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    .line 356
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v158, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_a
    const-string v7, "telephony.registry"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 357
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v160, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v160

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_65

    .line 359
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .local v160, "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :try_start_b
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 380
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 383
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 385
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 386
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 393
    .local v93, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v93

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 394
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/16 v24, 0x1

    .line 401
    :cond_3
    :goto_7
    if-eqz v110, :cond_2b

    const/4 v7, 0x1

    :goto_8
    move-object/from16 v0, v117

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    move-result-object v142

    .line 405
    :try_start_c
    invoke-interface/range {v142 .. v142}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    move-result v112

    .line 409
    :goto_9
    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 411
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 414
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 418
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    .line 423
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v72, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    .line 425
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v72, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_f
    const-string v7, "account"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_66

    move-object/from16 v71, v72

    .line 433
    .end local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_a
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "MobileManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-class v7, Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/mom/IMobileManagerService;

    move-object/from16 v128, v0

    .line 435
    const-string v7, "mobile"

    invoke-interface/range {v128 .. v128}, Lcom/mediatek/common/mom/IMobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6

    .line 442
    :goto_b
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v7, 0x1

    move/from16 v0, v110

    if-ne v0, v7, :cond_2c

    const/4 v7, 0x1

    :goto_c
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v90

    .line 446
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 449
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6

    .line 452
    .end local v119    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_67

    .line 454
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_13
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 456
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v174, Lcom/android/server/VibratorService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_68

    .line 458
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .local v174, "vibrator":Lcom/android/server/VibratorService;
    :try_start_14
    const-string v7, "vibrator"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 460
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v89, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_69

    .line 462
    .end local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v89, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_15
    const-string v7, "consumer_ir"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 466
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 470
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_6a

    .line 472
    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_16
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 474
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 477
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 479
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_6b

    .line 482
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_2d

    const/16 v22, 0x1

    :goto_d
    if-nez v112, :cond_2e

    const/16 v23, 0x1

    :goto_e
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v182

    .line 486
    const-string v7, "window"

    move-object/from16 v0, v182

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 487
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 489
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v182

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 491
    invoke-virtual/range {v182 .. v182}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 492
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 494
    move-object/from16 v0, v182

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 495
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 500
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 501
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_8

    :goto_f
    move-object/from16 v88, v89

    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v173, v174

    .line 536
    .end local v93    # "cryptState":Ljava/lang/String;
    .end local v174    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    :goto_10
    const/16 v94, 0x0

    .line 537
    .local v94, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v155, 0x0

    .line 538
    .local v155, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v114, 0x0

    .line 539
    .local v114, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v75, 0x0

    .line 540
    .local v75, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v136, 0x0

    .line 541
    .local v136, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v176, 0x0

    .line 542
    .local v176, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v120, 0x0

    .line 543
    .local v120, "location":Lcom/android/server/LocationManagerService;
    const/16 v91, 0x0

    .line 544
    .local v91, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v165, 0x0

    .line 545
    .local v165, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v122, 0x0

    .line 546
    .local v122, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v107, 0x0

    .line 547
    .local v107, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v164, 0x0

    .line 548
    .local v164, "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/16 v138, 0x0

    .line 549
    .local v138, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    const/16 v141, 0x0

    .line 550
    .local v141, "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    const/16 v77, 0x0

    .line 551
    .local v77, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v144, 0x0

    .line 552
    .local v144, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v125, 0x0

    .line 555
    .local v125, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_4

    .line 559
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v115, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v115

    move-object/from16 v1, v182

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9

    .line 561
    .end local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v115, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_19
    const-string v7, "input_method"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_63

    move-object/from16 v114, v115

    .line 567
    .end local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_11
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a

    .line 577
    :cond_4
    :goto_12
    :try_start_1b
    invoke-virtual/range {v182 .. v182}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_b

    .line 583
    :goto_13
    :try_start_1c
    invoke-interface/range {v142 .. v142}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c

    .line 589
    :goto_14
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040412

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_62

    .line 596
    :goto_15
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_35

    .line 597
    if-nez v101, :cond_5

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 604
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v130, Lcom/android/server/MountService;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_d

    .line 606
    .end local v129    # "mountService":Lcom/android/server/MountService;
    .local v130, "mountService":Lcom/android/server/MountService;
    :try_start_1f
    const-string v7, "mount"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_61

    move-object/from16 v129, v130

    .line 612
    .end local v130    # "mountService":Lcom/android/server/MountService;
    .restart local v129    # "mountService":Lcom/android/server/MountService;
    :cond_5
    :goto_16
    if-nez v100, :cond_6

    .line 614
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v123, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_e

    .line 616
    .end local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v123, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_21
    const-string v7, "lock_settings"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_60

    move-object/from16 v122, v123

    .line 622
    .end local v123    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_17
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v95, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v95

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_f

    .line 624
    .end local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v95, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_23
    const-string v7, "device_policy"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_5f

    move-object/from16 v94, v95

    .line 630
    .end local v95    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_6
    :goto_18
    if-nez v102, :cond_7

    .line 632
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v156, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v156

    move-object/from16 v1, v182

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_10

    .line 634
    .end local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v156, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_25
    const-string v7, "statusbar"

    move-object/from16 v0, v156

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_5e

    move-object/from16 v155, v156

    .line 640
    .end local v156    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_7
    :goto_19
    if-nez v100, :cond_8

    .line 642
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_11

    .line 650
    :cond_8
    :goto_1a
    if-nez v99, :cond_9

    .line 652
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 654
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_12

    .line 660
    :cond_9
    :goto_1b
    if-nez v100, :cond_a

    .line 662
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v166, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13

    .line 664
    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v166, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_29
    const-string v7, "textservices"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_5d

    move-object/from16 v165, v166

    .line 670
    .end local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_a
    :goto_1c
    if-nez v99, :cond_34

    .line 672
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v133, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v133

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_14

    .line 674
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v133, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_2b
    const-string v7, "netstats"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_5c

    move-object/from16 v29, v133

    .line 680
    .end local v133    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_1d
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_15

    .line 684
    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_2d
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_5b

    .line 690
    :goto_1e
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v181, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v181

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_16

    .line 692
    .end local v180    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v181, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2f
    const-string v7, "wifip2p"

    move-object/from16 v0, v181

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_5a

    move-object/from16 v180, v181

    .line 698
    .end local v181    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v180    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1f
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v179, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v179

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 700
    .end local v178    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v179, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_31
    const-string v7, "wifi"

    move-object/from16 v0, v179

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_59

    move-object/from16 v178, v179

    .line 706
    .end local v179    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v178    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_20
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v87, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v87

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_18

    .line 709
    .end local v86    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v87, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_33
    const-string v7, "connectivity"

    move-object/from16 v0, v87

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 710
    move-object/from16 v0, v29

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 711
    move-object/from16 v0, v25

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 713
    invoke-virtual/range {v180 .. v180}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 714
    invoke-virtual/range {v178 .. v178}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_58

    move-object/from16 v86, v87

    .line 720
    .end local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v86    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_21
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v153

    .line 722
    const-string v7, "servicediscovery"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 729
    :goto_22
    if-nez v100, :cond_b

    .line 731
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 744
    :cond_b
    :goto_23
    if-eqz v129, :cond_c

    if-nez v24, :cond_c

    .line 745
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 749
    :cond_c
    if-eqz v71, :cond_d

    .line 750
    :try_start_36
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 756
    :cond_d
    :goto_24
    if-eqz v90, :cond_e

    .line 757
    :try_start_37
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1c

    .line 763
    :cond_e
    :goto_25
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v137, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v137

    move-object/from16 v1, v155

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1d

    .line 765
    .end local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .local v137, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_39
    const-string v7, "notification"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 766
    move-object/from16 v0, v25

    move-object/from16 v1, v137

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_57

    move-object/from16 v136, v137

    .line 772
    .end local v137    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v136    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_26
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1e

    .line 779
    :goto_27
    if-nez v97, :cond_f

    .line 781
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v121, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .line 783
    .end local v120    # "location":Lcom/android/server/LocationManagerService;
    .local v121, "location":Lcom/android/server/LocationManagerService;
    :try_start_3c
    const-string v7, "location"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_56

    move-object/from16 v120, v121

    .line 789
    .end local v121    # "location":Lcom/android/server/LocationManagerService;
    .restart local v120    # "location":Lcom/android/server/LocationManagerService;
    :goto_28
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v92, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_20

    .line 791
    .end local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v92, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_3e
    const-string v7, "country_detector"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_55

    move-object/from16 v91, v92

    .line 797
    .end local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_29
    if-nez v100, :cond_10

    .line 799
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_21

    .line 809
    :cond_10
    :goto_2a
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_23

    .line 810
    const/16 v150, 0x0

    .line 812
    .local v150, "searchEngineService":Lcom/mediatek/common/search/ISearchEngineManagerService;
    :try_start_41
    const-class v7, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManagerService;

    move-object/from16 v150, v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_22
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 818
    :goto_2b
    if-eqz v150, :cond_11

    .line 819
    :try_start_42
    const-string v7, "search_engine"

    invoke-interface/range {v150 .. v150}, Lcom/mediatek/common/search/ISearchEngineManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_23

    .line 828
    .end local v150    # "searchEngineService":Lcom/mediatek/common/search/ISearchEngineManagerService;
    :cond_11
    :goto_2c
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_24

    .line 835
    :goto_2d
    if-nez v100, :cond_12

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110030

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 838
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    if-nez v34, :cond_12

    .line 840
    new-instance v177, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v177

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_25

    .line 841
    .end local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v177, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_45
    const-string v7, "wallpaper"

    move-object/from16 v0, v177

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_54

    move-object/from16 v176, v177

    .line 848
    .end local v177    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_12
    :goto_2e
    if-nez v98, :cond_13

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 850
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_26

    .line 859
    :cond_13
    :goto_2f
    if-nez v98, :cond_14

    .line 861
    const/16 v79, 0x0

    .line 863
    .local v79, "audioProfileService":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-class v7, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v79, v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_27
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_28

    .line 868
    :goto_30
    :try_start_48
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audioProfileService = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v79

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    if-eqz v79, :cond_14

    .line 870
    const-string v7, "audioprofile"

    invoke-interface/range {v79 .. v79}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .line 879
    .end local v79    # "audioProfileService":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_14
    :goto_31
    if-nez v100, :cond_15

    .line 881
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v106, Lcom/android/server/DockObserver;

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .end local v105    # "dock":Lcom/android/server/DockObserver;
    .local v106, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v105, v106

    .line 889
    .end local v106    # "dock":Lcom/android/server/DockObserver;
    .restart local v105    # "dock":Lcom/android/server/DockObserver;
    :cond_15
    :goto_32
    if-nez v98, :cond_16

    .line 891
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .line 900
    :cond_16
    :goto_33
    if-nez v100, :cond_17

    .line 902
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v172, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v172

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .line 905
    .end local v171    # "usb":Lcom/android/server/usb/UsbService;
    .local v172, "usb":Lcom/android/server/usb/UsbService;
    :try_start_4c
    const-string v7, "usb"

    move-object/from16 v0, v172

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_53

    move-object/from16 v171, v172

    .line 911
    .end local v172    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v171    # "usb":Lcom/android/server/usb/UsbService;
    :goto_34
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    new-instance v152, Lcom/android/server/SerialService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2c

    .line 914
    .end local v151    # "serial":Lcom/android/server/SerialService;
    .local v152, "serial":Lcom/android/server/SerialService;
    :try_start_4e
    const-string v7, "serial"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_52

    move-object/from16 v151, v152

    .line 921
    .end local v152    # "serial":Lcom/android/server/SerialService;
    .restart local v151    # "serial":Lcom/android/server/SerialService;
    :cond_17
    :goto_35
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v168, Lcom/android/server/TwilightService;

    move-object/from16 v0, v168

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2d

    .end local v167    # "twilight":Lcom/android/server/TwilightService;
    .local v168, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v167, v168

    .line 928
    .end local v168    # "twilight":Lcom/android/server/TwilightService;
    .restart local v167    # "twilight":Lcom/android/server/TwilightService;
    :goto_36
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v170, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v170

    move-object/from16 v1, v167

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2e

    .end local v169    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v170, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v169, v170

    .line 935
    .end local v170    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v169    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_37
    if-nez v100, :cond_18

    .line 937
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2f

    .line 945
    :goto_38
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v76, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_30

    .line 947
    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v76, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_53
    const-string v7, "appwidget"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_51

    move-object/from16 v75, v76

    .line 953
    .end local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_39
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v149, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_31

    .end local v148    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v149, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v148, v149

    .line 963
    .end local v149    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v148    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_18
    :goto_3a
    const/16 v73, 0x0

    .line 965
    .local v73, "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_55
    const-class v7, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v73, v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_33

    .line 970
    :goto_3b
    :try_start_56
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsMgr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v73

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-eqz v73, :cond_19

    .line 972
    const-string v7, "mtk-agps"

    invoke-interface/range {v73 .. v73}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_33

    .line 985
    :cond_19
    :goto_3c
    :try_start_57
    const-class v7, Lcom/mediatek/common/perfservice/IPerfServiceManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/IPerfServiceManager;

    move-object/from16 v141, v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_34

    .line 991
    :goto_3d
    const/16 v140, 0x0

    .line 993
    .local v140, "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    :try_start_58
    const-class v7, Lcom/mediatek/common/perfservice/IPerfService;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v141, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/IPerfService;

    move-object/from16 v140, v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .line 997
    :goto_3e
    :try_start_59
    const-string v7, "perfservice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perfService="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v140

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    if-eqz v140, :cond_1a

    .line 999
    const-string v7, "mtk-perfservice"

    invoke-interface/range {v140 .. v140}, Lcom/mediatek/common/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_36

    .line 1009
    :cond_1a
    :goto_3f
    :try_start_5a
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_37

    .line 1020
    :goto_40
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_38

    .line 1027
    :goto_41
    if-nez v99, :cond_1b

    .line 1029
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v135, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_39

    .end local v134    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v135, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v134, v135

    .line 1036
    .end local v135    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v134    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_42
    if-nez v98, :cond_1c

    .line 1038
    :try_start_5d
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v84, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v84

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3a

    .line 1040
    .end local v83    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v84, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_5e
    const-string v7, "commontime_management"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_50

    move-object/from16 v83, v84

    .line 1046
    .end local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v83    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1c
    :goto_43
    if-nez v99, :cond_1d

    .line 1048
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3b

    .line 1055
    :cond_1d
    :goto_44
    if-nez v100, :cond_1e

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110049

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1058
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    new-instance v108, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3c

    .line 1061
    .end local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v108, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_61
    const-string v7, "dreams"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_4f

    move-object/from16 v107, v108

    .line 1067
    .end local v108    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_1e
    :goto_45
    if-nez v100, :cond_1f

    .line 1069
    :try_start_62
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v78, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3d

    .line 1071
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v78, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_63
    const-string v7, "assetatlas"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_4e

    move-object/from16 v77, v78

    .line 1078
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1f
    :goto_46
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3e

    .line 1085
    :goto_47
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    new-instance v145, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3f

    .line 1087
    .end local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v145, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_66
    const-string v7, "print"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_4d

    move-object/from16 v144, v145

    .line 1092
    .end local v145    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_48
    if-nez v100, :cond_20

    .line 1094
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v126, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_40

    .line 1096
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v126, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_68
    const-string v7, "media_router"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_4c

    move-object/from16 v125, v126

    .line 1114
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_20
    :goto_49
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "PerfMgr state notifier"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v139, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v139 .. v139}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_41

    .line 1116
    .end local v138    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .local v139, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :try_start_6a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v139

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_4b

    move-object/from16 v138, v139

    .line 1123
    .end local v139    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v138    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :goto_4a
    if-nez v100, :cond_21

    .line 1139
    .end local v73    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v140    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    :cond_21
    :goto_4b
    invoke-virtual/range {v182 .. v182}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v48

    .line 1140
    .local v48, "safeMode":Z
    if-eqz v48, :cond_33

    .line 1141
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1143
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1145
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1154
    :goto_4c
    :try_start_6b
    invoke-virtual/range {v173 .. v173}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_42

    .line 1159
    :goto_4d
    if-eqz v122, :cond_22

    .line 1161
    :try_start_6c
    invoke-virtual/range {v122 .. v122}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_43

    .line 1167
    :cond_22
    :goto_4e
    if-eqz v94, :cond_23

    .line 1169
    :try_start_6d
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_44

    .line 1175
    :cond_23
    :goto_4f
    if-eqz v136, :cond_24

    .line 1177
    :try_start_6e
    invoke-virtual/range {v136 .. v136}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_45

    .line 1184
    :cond_24
    :goto_50
    :try_start_6f
    invoke-virtual/range {v182 .. v182}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_46

    .line 1189
    :goto_51
    if-eqz v48, :cond_25

    .line 1190
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1196
    :cond_25
    invoke-virtual/range {v182 .. v182}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v85

    .line 1197
    .local v85, "config":Landroid/content/res/Configuration;
    new-instance v127, Landroid/util/DisplayMetrics;

    invoke-direct/range {v127 .. v127}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1198
    .local v127, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v175

    check-cast v175, Landroid/view/WindowManager;

    .line 1199
    .local v175, "w":Landroid/view/WindowManager;
    invoke-interface/range {v175 .. v175}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v127

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1200
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v85

    move-object/from16 v1, v127

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1203
    :try_start_70
    move-object/from16 v0, v167

    move-object/from16 v1, v107

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_47

    .line 1209
    :goto_52
    :try_start_71
    invoke-interface/range {v142 .. v142}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_48

    .line 1215
    :goto_53
    :try_start_72
    move/from16 v0, v48

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_49

    .line 1221
    :goto_54
    move-object/from16 v35, v5

    .line 1222
    .local v35, "contextF":Landroid/content/Context;
    move-object/from16 v36, v129

    .line 1223
    .local v36, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v37, v8

    .line 1224
    .local v37, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v38, v30

    .line 1225
    .local v38, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v39, v29

    .line 1226
    .local v39, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v40, v25

    .line 1227
    .local v40, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v41, v86

    .line 1228
    .local v41, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v42, v105

    .line 1229
    .local v42, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v43, v171

    .line 1230
    .local v43, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v44, v167

    .line 1231
    .local v44, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v45, v169

    .line 1232
    .local v45, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v47, v75

    .line 1233
    .local v47, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v49, v176

    .line 1234
    .local v49, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v50, v114

    .line 1235
    .local v50, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v46, v148

    .line 1236
    .local v46, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v52, v120

    .line 1237
    .local v52, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v53, v91

    .line 1238
    .local v53, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v134

    .line 1239
    .local v54, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v83

    .line 1240
    .local v55, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v165

    .line 1241
    .local v56, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v51, v155

    .line 1242
    .local v51, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v107

    .line 1243
    .local v57, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v77

    .line 1244
    .local v58, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v59, v20

    .line 1245
    .local v59, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v157

    .line 1247
    .local v60, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v159

    .line 1248
    .local v61, "telephonyRegistryF2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v161

    .line 1249
    .local v62, "telephonyRegistryF3":Ljava/lang/Object;
    move-object/from16 v63, v162

    .line 1252
    .local v63, "telephonyRegistryF4":Ljava/lang/Object;
    move-object/from16 v64, v163

    .line 1254
    .local v64, "telephonyRegistryLteDcF":Ljava/lang/Object;
    move-object/from16 v65, v164

    .line 1255
    .local v65, "thermalF":Ljava/lang/Object;
    move-object/from16 v66, v141

    .line 1256
    .local v66, "perfServiceF":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    move-object/from16 v67, v144

    .line 1257
    .local v67, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v68, v125

    .line 1258
    .local v68, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v33, v128

    .line 1265
    .local v33, "momF":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v68}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;Lcom/mediatek/common/mom/IMobileManagerService;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Lcom/mediatek/common/perfservice/IPerfServiceManager;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1458
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1459
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_26
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1464
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1465
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    return-void

    .line 200
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "momF":Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v34    # "headless":Z
    .end local v35    # "contextF":Landroid/content/Context;
    .end local v36    # "mountServiceF":Lcom/android/server/MountService;
    .end local v37    # "batteryF":Lcom/android/server/BatteryService;
    .end local v38    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v39    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v40    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v42    # "dockF":Lcom/android/server/DockObserver;
    .end local v43    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v44    # "twilightF":Lcom/android/server/TwilightService;
    .end local v45    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v46    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v47    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v48    # "safeMode":Z
    .end local v49    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v50    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v51    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v52    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v53    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v54    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v55    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v56    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v57    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v58    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v59    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v60    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v61    # "telephonyRegistryF2":Lcom/android/server/TelephonyRegistry;
    .end local v62    # "telephonyRegistryF3":Ljava/lang/Object;
    .end local v63    # "telephonyRegistryF4":Ljava/lang/Object;
    .end local v64    # "telephonyRegistryLteDcF":Ljava/lang/Object;
    .end local v65    # "thermalF":Ljava/lang/Object;
    .end local v66    # "perfServiceF":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v67    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v68    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v69    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v83    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v85    # "config":Landroid/content/res/Configuration;
    .end local v86    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v90    # "contentService":Lcom/android/server/content/ContentService;
    .end local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v96    # "disableBluetooth":Z
    .end local v97    # "disableLocation":Z
    .end local v98    # "disableMedia":Z
    .end local v99    # "disableNetwork":Z
    .end local v100    # "disableNonCoreServices":Z
    .end local v101    # "disableStorage":Z
    .end local v102    # "disableSystemUI":Z
    .end local v103    # "disableTelephony":Z
    .end local v105    # "dock":Lcom/android/server/DockObserver;
    .end local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v110    # "factoryTest":I
    .end local v111    # "factoryTestStr":Ljava/lang/String;
    .end local v112    # "firstBoot":Z
    .end local v113    # "hdmiManager":Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .end local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v117    # "installer":Lcom/android/server/pm/Installer;
    .end local v120    # "location":Lcom/android/server/LocationManagerService;
    .end local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v127    # "metrics":Landroid/util/DisplayMetrics;
    .end local v128    # "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v129    # "mountService":Lcom/android/server/MountService;
    .end local v134    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v138    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v141    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v142    # "pm":Landroid/content/pm/IPackageManager;
    .end local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v148    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v151    # "serial":Lcom/android/server/SerialService;
    .end local v153    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v161    # "telephonyRegistry3":Lcom/android/server/TelephonyRegistry;
    .end local v162    # "telephonyRegistry4":Lcom/android/server/TelephonyRegistry;
    .end local v163    # "telephonyRegistryLteDc":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v167    # "twilight":Lcom/android/server/TwilightService;
    .end local v169    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v171    # "usb":Lcom/android/server/usb/UsbService;
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .end local v175    # "w":Landroid/view/WindowManager;
    .end local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v178    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v180    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v182    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v183    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_27
    const/16 v147, 0x0

    goto/16 :goto_0

    .line 206
    .restart local v147    # "reboot":Z
    :cond_28
    const/16 v146, 0x0

    .restart local v146    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 214
    .end local v146    # "reason":Ljava/lang/String;
    .end local v147    # "reboot":Z
    .restart local v111    # "factoryTestStr":Ljava/lang/String;
    :cond_29
    invoke-static/range {v111 .. v111}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v110

    goto/16 :goto_2

    .line 303
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v34    # "headless":Z
    .restart local v69    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v83    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v86    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v90    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v104    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v105    # "dock":Lcom/android/server/DockObserver;
    .restart local v110    # "factoryTest":I
    .restart local v112    # "firstBoot":Z
    .restart local v113    # "hdmiManager":Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "installer":Lcom/android/server/pm/Installer;
    .restart local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v128    # "mom":Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v129    # "mountService":Lcom/android/server/MountService;
    .restart local v131    # "msgMonitorService":Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    .restart local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v134    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v142    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v148    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v151    # "serial":Lcom/android/server/SerialService;
    .restart local v153    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v161    # "telephonyRegistry3":Lcom/android/server/TelephonyRegistry;
    .restart local v162    # "telephonyRegistry4":Lcom/android/server/TelephonyRegistry;
    .restart local v163    # "telephonyRegistryLteDc":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "twilight":Lcom/android/server/TwilightService;
    .restart local v169    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v171    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v178    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v180    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v182    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v183    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v109

    .line 304
    .local v109, "e":Ljava/lang/Exception;
    :try_start_73
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create message monitor service Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_73} :catch_2

    goto/16 :goto_3

    .line 308
    .end local v109    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v109

    .line 309
    .local v109, "e":Ljava/lang/Throwable;
    :try_start_74
    const-string v7, "SystemServer"

    const-string v9, "Starting message monitor service exception "

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_74} :catch_2

    goto/16 :goto_4

    .line 323
    .end local v109    # "e":Ljava/lang/Throwable;
    .end local v131    # "msgMonitorService":Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :catch_2
    move-exception v109

    move-object/from16 v117, v118

    .line 324
    .end local v118    # "installer":Lcom/android/server/pm/Installer;
    .local v109, "e":Ljava/lang/RuntimeException;
    .restart local v117    # "installer":Lcom/android/server/pm/Installer;
    :goto_55
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 348
    .end local v104    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v109    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v96    # "disableBluetooth":Z
    .restart local v97    # "disableLocation":Z
    .restart local v98    # "disableMedia":Z
    .restart local v99    # "disableNetwork":Z
    .restart local v100    # "disableNonCoreServices":Z
    .restart local v101    # "disableStorage":Z
    .restart local v102    # "disableSystemUI":Z
    .restart local v103    # "disableTelephony":Z
    :catch_3
    move-exception v109

    .line 349
    .local v109, "e":Ljava/lang/Throwable;
    :try_start_75
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SystemInterface Service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_75 .. :try_end_75} :catch_4

    goto/16 :goto_6

    .line 531
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v109

    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v119

    .line 532
    .end local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v109, "e":Ljava/lang/RuntimeException;
    :goto_56
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 396
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v109    # "e":Ljava/lang/RuntimeException;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v93    # "cryptState":Ljava/lang/String;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :cond_2a
    :try_start_76
    const-string v7, "1"

    move-object/from16 v0, v93

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 397
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 401
    :cond_2b
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 426
    :catch_5
    move-exception v109

    .line 427
    .local v109, "e":Ljava/lang/Throwable;
    :goto_57
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 531
    .end local v93    # "cryptState":Ljava/lang/String;
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v109

    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v119

    .end local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto :goto_56

    .line 436
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v93    # "cryptState":Ljava/lang/String;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_7
    move-exception v109

    .line 437
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_76} :catch_6

    goto/16 :goto_b

    .line 443
    .end local v109    # "e":Ljava/lang/Throwable;
    :cond_2c
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 483
    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .end local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v119    # "lights":Lcom/android/server/LightsService;
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v174    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2d
    const/16 v22, 0x0

    goto/16 :goto_d

    :cond_2e
    const/16 v23, 0x0

    goto/16 :goto_e

    .line 502
    :cond_2f
    const/4 v7, 0x1

    move/from16 v0, v110

    if-ne v0, v7, :cond_30

    .line 503
    :try_start_77
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 531
    :catch_8
    move-exception v109

    move-object/from16 v88, v89

    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v173, v174

    .end local v174    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_56

    .line 504
    .end local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v174    # "vibrator":Lcom/android/server/VibratorService;
    :cond_30
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 506
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 507
    :cond_31
    if-eqz v96, :cond_32

    .line 508
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 513
    :cond_32
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v82, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_77} :catch_8

    .line 515
    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v82, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_78
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 524
    new-instance v70, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_78} :catch_6c

    .line 525
    .end local v69    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .local v70, "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    :try_start_79
    const-string v7, "bluetooth_profile_manager"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_79} :catch_6d

    move-object/from16 v69, v70

    .end local v70    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .restart local v69    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v81, v82

    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_f

    .line 562
    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v93    # "cryptState":Ljava/lang/String;
    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v174    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "location":Lcom/android/server/LocationManagerService;
    .restart local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v138    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v141    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_9
    move-exception v109

    .line 563
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 570
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v109

    .line 571
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 578
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v109

    .line 579
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 584
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v109

    .line 585
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 607
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v109

    .line 608
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 617
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v109

    .line 618
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 625
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v109

    .line 626
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 635
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v109

    .line 636
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 645
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v109

    .line 646
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 655
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v109

    .line 656
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 665
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v109

    .line 666
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 675
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v109

    .line 676
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 685
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v109

    move-object/from16 v25, v132

    .line 686
    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 693
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v109

    .line 694
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 701
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v109

    .line 702
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 715
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v109

    .line 716
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 724
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v109

    .line 725
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 734
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v109

    .line 735
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 751
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v109

    .line 752
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 758
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v109

    .line 759
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 767
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v109

    .line 768
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 775
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v109

    .line 776
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 784
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v109

    .line 785
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 792
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v109

    .line 793
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_65
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 802
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v109

    .line 803
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 814
    .end local v109    # "e":Ljava/lang/Throwable;
    .restart local v150    # "searchEngineService":Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_22
    move-exception v109

    .line 815
    .local v109, "e":Ljava/lang/Exception;
    :try_start_7a
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ISearchEngineManagerService systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_23

    goto/16 :goto_2b

    .line 822
    .end local v109    # "e":Ljava/lang/Exception;
    .end local v150    # "searchEngineService":Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_23
    move-exception v109

    .line 823
    .local v109, "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 831
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v109

    .line 832
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 843
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v109

    .line 844
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_66
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 852
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v109

    .line 853
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 865
    .end local v109    # "e":Ljava/lang/Throwable;
    .restart local v79    # "audioProfileService":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_27
    move-exception v109

    .line 866
    .local v109, "e":Ljava/lang/Exception;
    :try_start_7b
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hugo_app systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_28

    goto/16 :goto_30

    .line 873
    .end local v109    # "e":Ljava/lang/Exception;
    :catch_28
    move-exception v109

    .line 874
    .local v109, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 884
    .end local v79    # "audioProfileService":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v109

    .line 885
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 895
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v109

    .line 896
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 906
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v109

    .line 907
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 915
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v109

    .line 916
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_68
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 923
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v109

    .line 924
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 931
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v109

    .line 932
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 940
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v109

    .line 941
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 948
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v109

    .line 949
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_69
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 955
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v109

    .line 956
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 967
    .end local v109    # "e":Ljava/lang/Throwable;
    .restart local v73    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_32
    move-exception v109

    .line 968
    .local v109, "e":Ljava/lang/Exception;
    :try_start_7c
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hugo_app systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_33

    goto/16 :goto_3b

    .line 975
    .end local v109    # "e":Ljava/lang/Exception;
    :catch_33
    move-exception v109

    .line 976
    .local v109, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 986
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v109

    .line 987
    .local v109, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAIL starting PerfService Manager"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v109

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 994
    .end local v109    # "e":Ljava/lang/Exception;
    .restart local v140    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    :catch_35
    move-exception v109

    .line 995
    .restart local v109    # "e":Ljava/lang/Exception;
    :try_start_7d
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perfservice systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_36

    goto/16 :goto_3e

    .line 1002
    .end local v109    # "e":Ljava/lang/Exception;
    :catch_36
    move-exception v109

    .line 1003
    .local v109, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "perfservice Failure starting PerfService"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 1011
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v109

    .line 1012
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1023
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v109

    .line 1024
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1031
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v109

    .line 1032
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1041
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v109

    .line 1042
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1050
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v109

    .line 1051
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1062
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v109

    .line 1063
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_6b
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1072
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v109

    .line 1073
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_6c
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1080
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v109

    .line 1081
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1088
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v109

    .line 1089
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_6d
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1097
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v109

    .line 1098
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1117
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v109

    .line 1118
    .restart local v109    # "e":Ljava/lang/Throwable;
    :goto_6f
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 1148
    .end local v73    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v109    # "e":Ljava/lang/Throwable;
    .end local v140    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v48    # "safeMode":Z
    :cond_33
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_4c

    .line 1155
    :catch_42
    move-exception v109

    .line 1156
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1162
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v109

    .line 1163
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1170
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v109

    .line 1171
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1178
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v109

    .line 1179
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1185
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_46
    move-exception v109

    .line 1186
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1204
    .end local v109    # "e":Ljava/lang/Throwable;
    .restart local v85    # "config":Landroid/content/res/Configuration;
    .restart local v127    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v175    # "w":Landroid/view/WindowManager;
    :catch_47
    move-exception v109

    .line 1205
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1210
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v109

    .line 1211
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1216
    .end local v109    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v109

    .line 1217
    .restart local v109    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 406
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v48    # "safeMode":Z
    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v85    # "config":Landroid/content/res/Configuration;
    .end local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v109    # "e":Ljava/lang/Throwable;
    .end local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v120    # "location":Lcom/android/server/LocationManagerService;
    .end local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v127    # "metrics":Landroid/util/DisplayMetrics;
    .end local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v138    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v141    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v175    # "w":Landroid/view/WindowManager;
    .end local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v93    # "cryptState":Ljava/lang/String;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_4a
    move-exception v7

    goto/16 :goto_9

    .line 1117
    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .end local v93    # "cryptState":Ljava/lang/String;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v119    # "lights":Lcom/android/server/LightsService;
    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v73    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "location":Lcom/android/server/LocationManagerService;
    .restart local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v139    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v140    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v141    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_4b
    move-exception v109

    move-object/from16 v138, v139

    .end local v139    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v138    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    goto :goto_6f

    .line 1097
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_4c
    move-exception v109

    move-object/from16 v125, v126

    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_6e

    .line 1088
    .end local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v145    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_4d
    move-exception v109

    move-object/from16 v144, v145

    .end local v145    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_6d

    .line 1072
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_4e
    move-exception v109

    move-object/from16 v77, v78

    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_6c

    .line 1062
    .end local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v108    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_4f
    move-exception v109

    move-object/from16 v107, v108

    .end local v108    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_6b

    .line 1041
    .end local v83    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_50
    move-exception v109

    move-object/from16 v83, v84

    .end local v84    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v83    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_6a

    .line 948
    .end local v73    # "agpsMgr":Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v140    # "perfService":Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_51
    move-exception v109

    move-object/from16 v75, v76

    .end local v76    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_69

    .line 915
    .end local v151    # "serial":Lcom/android/server/SerialService;
    .restart local v152    # "serial":Lcom/android/server/SerialService;
    :catch_52
    move-exception v109

    move-object/from16 v151, v152

    .end local v152    # "serial":Lcom/android/server/SerialService;
    .restart local v151    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_68

    .line 906
    .end local v171    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v172    # "usb":Lcom/android/server/usb/UsbService;
    :catch_53
    move-exception v109

    move-object/from16 v171, v172

    .end local v172    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v171    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_67

    .line 843
    .end local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v177    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_54
    move-exception v109

    move-object/from16 v176, v177

    .end local v177    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_66

    .line 792
    .end local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_55
    move-exception v109

    move-object/from16 v91, v92

    .end local v92    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_65

    .line 784
    .end local v120    # "location":Lcom/android/server/LocationManagerService;
    .restart local v121    # "location":Lcom/android/server/LocationManagerService;
    :catch_56
    move-exception v109

    move-object/from16 v120, v121

    .end local v121    # "location":Lcom/android/server/LocationManagerService;
    .restart local v120    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_64

    .line 767
    .end local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v137    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_57
    move-exception v109

    move-object/from16 v136, v137

    .end local v137    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v136    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_63

    .line 715
    .end local v86    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_58
    move-exception v109

    move-object/from16 v86, v87

    .end local v87    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v86    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_62

    .line 701
    .end local v178    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v179    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_59
    move-exception v109

    move-object/from16 v178, v179

    .end local v179    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v178    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_61

    .line 693
    .end local v180    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v181    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_5a
    move-exception v109

    move-object/from16 v180, v181

    .end local v181    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v180    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_60

    .line 685
    :catch_5b
    move-exception v109

    goto/16 :goto_5f

    .line 675
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v133    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_5c
    move-exception v109

    move-object/from16 v29, v133

    .end local v133    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_5e

    .line 665
    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_5d
    move-exception v109

    move-object/from16 v165, v166

    .end local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_5d

    .line 635
    .end local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v156    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_5e
    move-exception v109

    move-object/from16 v155, v156

    .end local v156    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_5c

    .line 625
    .end local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v95    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_5f
    move-exception v109

    move-object/from16 v94, v95

    .end local v95    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_5b

    .line 617
    .end local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v123    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_60
    move-exception v109

    move-object/from16 v122, v123

    .end local v123    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_5a

    .line 607
    .end local v129    # "mountService":Lcom/android/server/MountService;
    .restart local v130    # "mountService":Lcom/android/server/MountService;
    :catch_61
    move-exception v109

    move-object/from16 v129, v130

    .end local v130    # "mountService":Lcom/android/server/MountService;
    .restart local v129    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_59

    .line 593
    :catch_62
    move-exception v7

    goto/16 :goto_15

    .line 562
    .end local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_63
    move-exception v109

    move-object/from16 v114, v115

    .end local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_58

    .line 531
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v120    # "location":Lcom/android/server/LocationManagerService;
    .end local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v138    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v141    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v164    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v119    # "lights":Lcom/android/server/LightsService;
    :catch_64
    move-exception v109

    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v104

    .end local v104    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v119

    .end local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_56

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_65
    move-exception v109

    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v119

    .end local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_56

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v93    # "cryptState":Ljava/lang/String;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_66
    move-exception v109

    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v119

    .end local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v71, v72

    .end local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_56

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_67
    move-exception v109

    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_56

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_68
    move-exception v109

    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_56

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v174    # "vibrator":Lcom/android/server/VibratorService;
    :catch_69
    move-exception v109

    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v173, v174

    .end local v174    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_56

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v174    # "vibrator":Lcom/android/server/VibratorService;
    :catch_6a
    move-exception v109

    move-object/from16 v88, v89

    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v173, v174

    .end local v174    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_56

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v174    # "vibrator":Lcom/android/server/VibratorService;
    :catch_6b
    move-exception v109

    move-object/from16 v88, v89

    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v173, v174

    .end local v174    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_56

    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v174    # "vibrator":Lcom/android/server/VibratorService;
    :catch_6c
    move-exception v109

    move-object/from16 v88, v89

    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v81, v82

    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v173, v174

    .end local v174    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_56

    .end local v69    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v173    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v70    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v174    # "vibrator":Lcom/android/server/VibratorService;
    :catch_6d
    move-exception v109

    move-object/from16 v88, v89

    .end local v89    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v88    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v69, v70

    .end local v70    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    .restart local v69    # "BluetoothProfileManager":Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v81, v82

    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v173, v174

    .end local v174    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v173    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_56

    .line 426
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_6e
    move-exception v109

    move-object/from16 v71, v72

    .end local v72    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_57

    .line 323
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v93    # "cryptState":Ljava/lang/String;
    .end local v96    # "disableBluetooth":Z
    .end local v97    # "disableLocation":Z
    .end local v98    # "disableMedia":Z
    .end local v99    # "disableNetwork":Z
    .end local v100    # "disableNonCoreServices":Z
    .end local v101    # "disableStorage":Z
    .end local v102    # "disableSystemUI":Z
    .end local v103    # "disableTelephony":Z
    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v160    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    :catch_6f
    move-exception v109

    goto/16 :goto_55

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v117    # "installer":Lcom/android/server/pm/Installer;
    .restart local v118    # "installer":Lcom/android/server/pm/Installer;
    .restart local v143    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_70
    move-exception v109

    move-object/from16 v4, v143

    .end local v143    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v117, v118

    .end local v118    # "installer":Lcom/android/server/pm/Installer;
    .restart local v117    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v74    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .end local v104    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v119    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v91    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v94    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v96    # "disableBluetooth":Z
    .restart local v97    # "disableLocation":Z
    .restart local v98    # "disableMedia":Z
    .restart local v99    # "disableNetwork":Z
    .restart local v100    # "disableNonCoreServices":Z
    .restart local v101    # "disableStorage":Z
    .restart local v102    # "disableSystemUI":Z
    .restart local v103    # "disableTelephony":Z
    .restart local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "location":Lcom/android/server/LocationManagerService;
    .restart local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v125    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v136    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v138    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v141    # "perfServiceMgr":Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v144    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v155    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v164    # "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v176    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_34
    move-object/from16 v25, v132

    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_22

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_35
    move-object/from16 v25, v132

    .end local v132    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_4b
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    return-void
.end method
