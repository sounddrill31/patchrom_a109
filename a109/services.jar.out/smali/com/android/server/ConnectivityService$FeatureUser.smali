.class Lcom/android/server/ConnectivityService$FeatureUser;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureUser"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mCreateTime:J

.field mFeature:Ljava/lang/String;

.field mNetworkType:I

.field mPid:I

.field mRadioNum:I

.field mUid:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p2, "type"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1369
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1391
    iput p2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1392
    iput-object p3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1393
    iput-object p4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    .line 1394
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    .line 1399
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :goto_0
    return-void

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$FeatureUser;->binderDied()V

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 3
    .param p2, "type"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "radioNum"    # I

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1369
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1373
    iput p2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1374
    iput-object p3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1375
    iput-object p4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    .line 1376
    iput p5, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1377
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    .line 1382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :goto_0
    return-void

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$FeatureUser;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityService FeatureUser binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 1415
    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p0, v5}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    .line 1425
    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p0, v5}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    goto :goto_0
.end method

.method public expire()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityService FeatureUser expire("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 1434
    const-string v0, "enableMMS"

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p0, v5}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p0, v5}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    goto :goto_0
.end method

.method public isSameUser(IIILjava/lang/String;)Z
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "networkType"    # I
    .param p4, "feature"    # Ljava/lang/String;

    .prologue
    .line 1453
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSameUser(IIILjava/lang/String;I)Z
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "networkType"    # I
    .param p4, "feature"    # Ljava/lang/String;
    .param p5, "radioNum"    # I

    .prologue
    .line 1457
    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    if-ne v0, p5, :cond_0

    .line 1459
    const/4 v0, 0x1

    .line 1461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z
    .locals 6
    .param p1, "u"    # Lcom/android/server/ConnectivityService$FeatureUser;

    .prologue
    .line 1447
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1449
    :goto_0
    return v0

    :cond_0
    iget v1, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    iget v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v3, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iget-object v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureUser("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1407
    return-void
.end method
