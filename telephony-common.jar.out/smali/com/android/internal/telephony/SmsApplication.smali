.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;,
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 557
    const-string v0, "sms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 558
    const-string v0, "smsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 559
    const-string v0, "mms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 560
    const-string v0, "mmsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method private static getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 264
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 266
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v19

    if-nez v19, :cond_1

    .line 269
    const/4 v6, 0x0

    .line 405
    :cond_0
    return-object v6

    .line 272
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 275
    .local v7, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "sms_default_application"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "defaultApplication":Ljava/lang/String;
    const/4 v6, 0x0

    .line 279
    .local v6, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v8, :cond_2

    .line 280
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v6

    .line 284
    :cond_2
    if-eqz p1, :cond_4

    if-nez v6, :cond_4

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 287
    .local v15, "r":Landroid/content/res/Resources;
    const v19, 0x1040023

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "defaultPackage":Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v6

    .line 291
    if-nez v6, :cond_3

    .line 293
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v19

    if-eqz v19, :cond_3

    .line 294
    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v6, v19, v20

    .end local v6    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    check-cast v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 299
    .restart local v6    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    if-eqz v6, :cond_4

    .line 300
    iget-object v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 305
    .end local v9    # "defaultPackage":Ljava/lang/String;
    .end local v15    # "r":Landroid/content/res/Resources;
    :cond_4
    if-eqz v6, :cond_0

    .line 306
    const-string v19, "appops"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 312
    .local v5, "appOps":Landroid/app/AppOpsManager;
    if-nez p1, :cond_5

    iget v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    move/from16 v19, v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 314
    :cond_5
    const/16 v19, 0xf

    iget v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    move/from16 v20, v0

    iget-object v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v13

    .line 316
    .local v13, "mode":I
    if-eqz v13, :cond_6

    .line 317
    const-string v20, "SmsApplication"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " lost OP_WRITE_SMS: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz p1, :cond_a

    const-string v19, " (fixing)"

    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz p1, :cond_b

    .line 320
    const/16 v19, 0xf

    iget v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    move/from16 v20, v0

    iget-object v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 330
    .end local v13    # "mode":I
    :cond_6
    :goto_1
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 336
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/content/ComponentName;

    iget-object v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 341
    :try_start_0
    const-string v19, "com.android.phone"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 342
    .local v12, "info":Landroid/content/pm/PackageInfo;
    const/16 v19, 0xf

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    const-string v21, "com.android.phone"

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v13

    .line 344
    .restart local v13    # "mode":I
    if-eqz v13, :cond_7

    .line 345
    const-string v19, "SmsApplication"

    const-string v20, "com.android.phone lost OP_WRITE_SMS:  (fixing)"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v19, 0xf

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    const-string v21, "com.android.phone"

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v12    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "mode":I
    :cond_7
    :goto_2
    :try_start_1
    const-string v19, "com.android.bluetooth"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 357
    .restart local v12    # "info":Landroid/content/pm/PackageInfo;
    const/16 v19, 0xf

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    const-string v21, "com.android.bluetooth"

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v13

    .line 359
    .restart local v13    # "mode":I
    if-eqz v13, :cond_8

    .line 360
    const-string v19, "SmsApplication"

    const-string v20, "com.android.bluetooth lost OP_WRITE_SMS:  (fixing)"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v19, 0xf

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    const-string v21, "com.android.bluetooth"

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    .end local v12    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "mode":I
    :cond_8
    :goto_3
    const/16 v18, 0x0

    .line 374
    .local v18, "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :try_start_2
    const-class v19, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    move-object/from16 v18, v0

    .line 375
    if-eqz v18, :cond_c

    .line 376
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "actualClassName":Ljava/lang/String;
    const-string v19, "SmsApplication"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "initial ISmsDbVisitor done, actual class name is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 384
    .end local v4    # "actualClassName":Ljava/lang/String;
    :goto_4
    if-eqz v18, :cond_0

    .line 385
    invoke-interface/range {v18 .. v18}, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;->getPackageNames()[Ljava/lang/String;

    move-result-object v16

    .line 386
    .local v16, "specialApps":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_0

    .line 388
    :try_start_3
    aget-object v19, v16, v11

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 389
    .restart local v12    # "info":Landroid/content/pm/PackageInfo;
    const/16 v19, 0xf

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    aget-object v21, v16, v11

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v13

    .line 391
    .restart local v13    # "mode":I
    if-eqz v13, :cond_9

    .line 392
    const-string v19, "SmsApplication"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v21, v16, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lost OP_WRITE_SMS:  (fixing)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v19, 0xf

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    aget-object v21, v16, v11

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 386
    .end local v12    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "mode":I
    :cond_9
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 317
    .end local v11    # "i":I
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v16    # "specialApps":[Ljava/lang/String;
    .end local v18    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    .restart local v13    # "mode":I
    :cond_a
    const-string v19, " (no permission to fix)"

    goto/16 :goto_0

    .line 324
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 349
    .end local v13    # "mode":I
    .restart local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v10

    .line 351
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "SmsApplication"

    const-string v20, "Phone package not found: com.android.phone"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 364
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v10

    .line 366
    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "SmsApplication"

    const-string v20, "Bluetooth package not found: com.android.bluetooth"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 379
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v18    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :cond_c
    :try_start_4
    const-string v19, "SmsApplication"

    const-string v20, "FAIL! intial ISmsDbVisitor"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 381
    :catch_2
    move-exception v10

    .line 382
    .local v10, "e":Ljava/lang/RuntimeException;
    const-string v19, "SmsApplication"

    const-string v20, "FAIL! No ISmsDbVisitor"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 396
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "i":I
    .restart local v16    # "specialApps":[Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 398
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "SmsApplication"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Internal package not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 141
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v14, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 144
    .local v13, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v7, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 148
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 149
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 152
    const-string v14, "android.permission.BROADCAST_SMS"

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 155
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 156
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 157
    invoke-virtual {v8, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "applicationName":Ljava/lang/String;
    new-instance v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v12, v1, v6, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    .local v12, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    .line 161
    invoke-virtual {v7, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v14, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    const-string v15, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 169
    .local v4, "mmsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 170
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 171
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 174
    const-string v14, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 177
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 178
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 179
    .restart local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_2

    .line 180
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    goto :goto_1

    .line 185
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v14, "android.intent.action.RESPOND_VIA_MESSAGE"

    const-string v15, "smsto"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 188
    .local v9, "respondServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 189
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 190
    .local v11, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v11, :cond_4

    .line 193
    const-string v14, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 196
    iget-object v6, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 197
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 198
    .restart local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_4

    .line 199
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    goto :goto_2

    .line 204
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v14, "android.intent.action.SENDTO"

    const-string v15, "smsto"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 207
    .local v10, "sendToActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 208
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 209
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_6

    .line 212
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 213
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 214
    .restart local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_6

    .line 215
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    goto :goto_3

    .line 220
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 221
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 222
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_8

    .line 225
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 226
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 227
    .restart local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_8

    .line 228
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v14

    if-nez v14, :cond_8

    .line 229
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 233
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_9
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    return-object v14
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    .prologue
    .local p0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    const/4 v2, 0x0

    .line 242
    if-nez p1, :cond_0

    move-object v0, v2

    .line 251
    :goto_0
    return-object v0

    .line 246
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 247
    .local v0, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    move-object v0, v2

    .line 251
    goto :goto_0
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 625
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 626
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 642
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 643
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 659
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 660
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 609
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 610
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 596
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 597
    .local v0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static initSmsPackageMonitor(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 550
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 551
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 552
    return-void
.end method

.method private static replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    .line 569
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {p2, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 570
    .local v2, "intent":Landroid/content/Intent;
    const v7, 0x10040

    invoke-virtual {p0, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 574
    .local v5, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 575
    .local v4, "n":I
    new-array v6, v4, [Landroid/content/ComponentName;

    .line 576
    .local v6, "set":[Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 577
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 578
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v0

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 583
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 586
    const v7, 0x208000

    invoke-virtual {p0, v3, v7, v6, p1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 589
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 17
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    const-string v13, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 415
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v13

    if-nez v13, :cond_1

    .line 510
    :cond_0
    return-void

    .line 422
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sms_default_application"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, "oldPackageName":Ljava/lang/String;
    if-eqz p0, :cond_2

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 431
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 432
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v4

    .line 433
    .local v4, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 434
    .local v3, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_0

    .line 436
    const-string v13, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 437
    .local v2, "appOps":Landroid/app/AppOpsManager;
    if-eqz v8, :cond_3

    .line 439
    const/16 v13, 0x2000

    :try_start_0
    invoke-virtual {v9, v8, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 441
    .local v7, "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v15, 0x1

    invoke-virtual {v2, v13, v14, v8, v15}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sms_default_application"

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 453
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v13}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 457
    const/16 v13, 0xf

    iget v14, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 462
    :try_start_1
    const-string v13, "com.android.phone"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 463
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.phone"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 472
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    :try_start_2
    const-string v13, "com.android.bluetooth"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 473
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.bluetooth"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 483
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :goto_2
    const/4 v12, 0x0

    .line 485
    .local v12, "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :try_start_3
    const-class v13, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    move-object v12, v0

    .line 486
    if-eqz v12, :cond_4

    .line 487
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "actualClassName":Ljava/lang/String;
    const-string v13, "SmsApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initial ISmsDbVisitor done, actual class name is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 495
    .end local v1    # "actualClassName":Ljava/lang/String;
    :goto_3
    if-eqz v12, :cond_0

    .line 496
    invoke-interface {v12}, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;->getPackageNames()[Ljava/lang/String;

    move-result-object v10

    .line 497
    .local v10, "specialApps":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v13, v10

    if-ge v6, v13, :cond_0

    .line 499
    :try_start_4
    aget-object v13, v10, v6

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 500
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    aget-object v15, v10, v6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 497
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 443
    .end local v6    # "i":I
    .end local v10    # "specialApps":[Ljava/lang/String;
    .end local v12    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :catch_0
    move-exception v5

    .line 444
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Old SMS package not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 465
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v5

    .line 467
    .restart local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    const-string v14, "Phone package not found: com.android.phone"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 475
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v5

    .line 477
    .restart local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    const-string v14, "Bluetooth package not found: com.android.bluetooth"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 490
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :cond_4
    :try_start_5
    const-string v13, "SmsApplication"

    const-string v14, "FAIL! intial ISmsDbVisitor"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 492
    :catch_3
    move-exception v5

    .line 493
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v13, "SmsApplication"

    const-string v14, "FAIL! No ISmsDbVisitor"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 502
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "i":I
    .restart local v10    # "specialApps":[Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 504
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Internal package not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v10, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 670
    if-nez p0, :cond_0

    move v8, v9

    .line 710
    :goto_0
    return v8

    .line 672
    :cond_0
    const/4 v3, 0x0

    .line 673
    .local v3, "defaultSmsPackage":Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 674
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 675
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 678
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    const-string v8, "com.android.bluetooth"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 685
    const/4 v7, 0x0

    .line 687
    .local v7, "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :try_start_0
    const-class v8, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v11}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;

    move-object v7, v0

    .line 688
    if-eqz v7, :cond_3

    .line 689
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "actualClassName":Ljava/lang/String;
    const-string v8, "SmsApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initial ISmsDbVisitor done, actual class name is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v1    # "actualClassName":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_5

    .line 698
    invoke-interface {v7}, Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;->getPackageNames()[Ljava/lang/String;

    move-result-object v6

    .line 699
    .local v6, "specialApps":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v8, v6

    if-ge v5, v8, :cond_5

    .line 700
    aget-object v8, v6, v5

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v10

    .line 701
    goto :goto_0

    .line 692
    .end local v5    # "i":I
    .end local v6    # "specialApps":[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v8, "SmsApplication"

    const-string v11, "FAIL! intial ISmsDbVisitor"

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 694
    :catch_0
    move-exception v4

    .line 695
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v8, "SmsApplication"

    const-string v11, "FAIL! No ISmsDbVisitor"

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 699
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "i":I
    .restart local v6    # "specialApps":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "specialApps":[Ljava/lang/String;
    :cond_5
    move v8, v9

    .line 707
    goto :goto_0

    .end local v7    # "visitor":Lcom/mediatek/common/smsdbpermission/ISmsDbVisitor;
    :cond_6
    move v8, v10

    .line 710
    goto :goto_0
.end method
