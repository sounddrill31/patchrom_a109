.class public Lcom/android/server/connectivity/Vpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private volatile mEnableNotif:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserId:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "connService"    # Landroid/net/IConnectivityManager;
    .param p5, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 121
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 101
    const-string v0, "[Legacy VPN]"

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 112
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 114
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 556
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 122
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 124
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    .line 125
    iput p5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    if-nez p5, :cond_0

    .line 134
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 164
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 129
    :catch_0
    move-exception v6

    .line 130
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vpn"

    const-string v1, "Problem registering observer"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method private addVpnUserLocked(I)V
    .locals 14
    .param p1, "user"    # I

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 454
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v10

    if-nez v10, :cond_0

    .line 455
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "VPN is not active"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 458
    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v4, 0x1

    .line 462
    .local v4, "forwardDns":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v10, v11, p1, v4}, Lcom/android/server/ConnectivityService$VpnCallback;->addUserForwarding(Ljava/lang/String;IZ)V

    .line 463
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 466
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v11, "[Legacy VPN]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 468
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 469
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 471
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-interface {v10, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 475
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 477
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 478
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 479
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    if-lez v10, :cond_1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    if-lez v10, :cond_1

    .line 480
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 482
    .local v9, "width":I
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 484
    .local v5, "height":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11, v9, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 486
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 488
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 490
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v5    # "height":I
    .end local v9    # "width":I
    :cond_1
    invoke-direct {p0, v7, v1, p1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 494
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 458
    .end local v4    # "forwardDns":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 472
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "forwardDns":Z
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 473
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Invalid application"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 492
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, p1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_1
.end method

.method private enforceControlPermission()V
    .locals 7

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    .line 613
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 607
    .local v1, "appId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 610
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 611
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.vpndialogs"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 612
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v5, :cond_1

    .line 618
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 615
    :catch_0
    move-exception v5

    .line 618
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Unauthorized Caller"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 693
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 694
    return-object v1

    .line 698
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private hideNotification(I)V
    .locals 5
    .param p1, "user"    # I

    .prologue
    const/4 v2, 0x0

    .line 667
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 669
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 672
    .local v1, "nm":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 675
    const/4 v2, 0x0

    const v3, 0x1080676

    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isRunningLocked()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onUserAdded(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 511
    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 513
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 514
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 522
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 526
    monitor-enter p0

    .line 527
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 528
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 529
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 537
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private removeVpnUserLocked(I)V
    .locals 3
    .param p1, "user"    # I

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 499
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 504
    .local v0, "forwardDns":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 505
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 506
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 507
    return-void

    .line 502
    .end local v0    # "forwardDns":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    const v10, 0x1080676

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 639
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v4, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 642
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 645
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 646
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "title":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "text":Ljava/lang/String;
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 660
    .local v1, "notification":Landroid/app/Notification;
    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v10, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 646
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b6

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 648
    .restart local v3    # "title":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b8

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 812
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    .line 815
    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 816
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 819
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 820
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 3
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->onStateChanged(Landroid/net/NetworkInfo;)V

    .line 212
    return-void
.end method


# virtual methods
.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 23
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    .line 330
    .local v13, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 331
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 333
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v22, v0

    invoke-interface/range {v19 .. v22}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 335
    const/16 v17, 0x0

    .line 444
    :goto_0
    monitor-exit p0

    return-object v17

    .line 337
    :catch_0
    move-exception v8

    .line 338
    .local v8, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_0

    .line 341
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.net.VpnService"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v15

    .line 346
    .local v15, "token":J
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    .line 347
    .local v18, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 348
    new-instance v19, Ljava/lang/SecurityException;

    const-string v20, "Restricted users cannot establish VPNs"

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    .end local v18    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v8

    .line 360
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v19, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot find "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v19

    :try_start_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 329
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "mgr":Landroid/os/UserManager;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "token":J
    :catchall_1
    move-exception v19

    monitor-exit p0

    throw v19

    .line 351
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "mgr":Landroid/os/UserManager;
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "token":J
    .restart local v18    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v11, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 353
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_2

    .line 354
    new-instance v19, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot find "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 356
    :cond_2
    const-string v19, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 357
    new-instance v19, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " does not require "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 362
    :cond_3
    :try_start_7
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v17

    .line 368
    .local v17, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v12

    .line 372
    .local v12, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 374
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 411
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "interfaze":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 412
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_9
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 413
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 416
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 420
    :goto_2
    :try_start_b
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 376
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "interfaze":Ljava/lang/String;
    :cond_4
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 377
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "At least one address must be specified"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 379
    :cond_5
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 380
    .local v7, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v11, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 382
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot bind "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 384
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 387
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 390
    :cond_8
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 391
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 397
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 399
    new-instance v19, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v15

    .line 402
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 408
    :try_start_e
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 422
    :try_start_f
    const-string v19, "Vpn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Established by "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-wide v15

    .line 429
    :try_start_10
    invoke-virtual {v13}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "user":Landroid/content/pm/UserInfo;
    check-cast v18, Landroid/content/pm/UserInfo;

    .line 430
    .restart local v18    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result v19

    if-eqz v19, :cond_9

    .line 432
    :try_start_11
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_3

    .line 433
    :catch_3
    move-exception v8

    .line 434
    .local v8, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v19, "Vpn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to add user "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to owner\'s VPN"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_3

    .line 439
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v18    # "user":Landroid/content/pm/UserInfo;
    :catchall_2
    move-exception v19

    :try_start_13
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 408
    .restart local v18    # "user":Landroid/content/pm/UserInfo;
    :catchall_3
    move-exception v19

    :try_start_14
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 439
    :cond_a
    :try_start_15
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    :cond_b
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_0

    .line 417
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "interfaze":Ljava/lang/String;
    .local v8, "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v19

    goto/16 :goto_2
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 856
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    .prologue
    .line 840
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 841
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 849
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 843
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 844
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 845
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 846
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 840
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 544
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :goto_0
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 551
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 233
    monitor-enter p0

    :try_start_0
    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepare old:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",new:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    move v6, v0

    .line 290
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 240
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "[Legacy VPN]"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 249
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    if-eqz v7, :cond_5

    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 252
    .local v3, "token":J
    :try_start_2
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 253
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 254
    .local v2, "size":I
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    move v0, v6

    .line 256
    .local v0, "forwardDns":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 257
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 258
    .local v5, "user":I
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v0}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 259
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v5    # "user":I
    :cond_4
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 267
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 268
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 272
    .end local v0    # "forwardDns":Z
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "token":J
    :cond_5
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_7

    .line 274
    :try_start_4
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn$Connection;->access$300(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v7

    const v8, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    :goto_2
    :try_start_5
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 280
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 286
    :cond_6
    :goto_3
    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switched from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 288
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 289
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "prepare"

    invoke-direct {p0, v7, v8}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 233
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 264
    .restart local v3    # "token":J
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 281
    .end local v3    # "token":J
    :cond_7
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v7, :cond_6

    .line 282
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 283
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 276
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 6
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "interfaze"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 303
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 304
    .local v0, "appUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 305
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Unauthorized Caller"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 310
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$VpnCallback;->protect(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 315
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/connectivity/Vpn;->jniProtect(ILjava/lang/String;)V

    .line 317
    return-void

    .line 312
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEnableNotifications(Z)V
    .locals 0
    .param p1, "enableNotif"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 172
    return-void
.end method

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 181
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 13
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 707
    invoke-virtual {p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v11

    if-nez v11, :cond_0

    .line 708
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "KeyStore isn\'t unlocked"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 711
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v4

    .line 712
    .local v4, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, "gateway":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, "iface":Ljava/lang/String;
    const-string v6, ""

    .line 717
    .local v6, "privateKey":Ljava/lang/String;
    const-string v9, ""

    .line 718
    .local v9, "userCert":Ljava/lang/String;
    const-string v0, ""

    .line 719
    .local v0, "caCert":Ljava/lang/String;
    const-string v8, ""

    .line 720
    .local v8, "serverCert":Ljava/lang/String;
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 721
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 722
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 723
    .local v10, "value":[B
    if-nez v10, :cond_5

    const/4 v9, 0x0

    .line 725
    .end local v10    # "value":[B
    :cond_1
    :goto_0
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 726
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 727
    .restart local v10    # "value":[B
    if-nez v10, :cond_6

    const/4 v0, 0x0

    .line 729
    .end local v10    # "value":[B
    :cond_2
    :goto_1
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 730
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 731
    .restart local v10    # "value":[B
    if-nez v10, :cond_7

    const/4 v8, 0x0

    .line 733
    .end local v10    # "value":[B
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    if-nez v8, :cond_8

    .line 734
    :cond_4
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 723
    .restart local v10    # "value":[B
    :cond_5
    new-instance v9, Ljava/lang/String;

    .end local v9    # "userCert":Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 727
    .restart local v9    # "userCert":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/String;

    .end local v0    # "caCert":Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 731
    .restart local v0    # "caCert":Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/String;

    .end local v8    # "serverCert":Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 738
    .end local v10    # "value":[B
    .restart local v8    # "serverCert":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    .line 739
    .local v7, "racoon":[Ljava/lang/String;
    iget v11, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_0

    .line 773
    :goto_3
    const/4 v5, 0x0

    .line 774
    .local v5, "mtpd":[Ljava/lang/String;
    iget v11, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_1

    .line 795
    :goto_4
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 796
    .local v1, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 797
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 798
    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 799
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 801
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 802
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 803
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 805
    :cond_9
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 806
    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 808
    :cond_a
    invoke-direct {p0, v1, v7, v5}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 809
    return-void

    .line 741
    .end local v1    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v5    # "mtpd":[Ljava/lang/String;
    :pswitch_0
    const/4 v11, 0x6

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udppsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 745
    .restart local v7    # "racoon":[Ljava/lang/String;
    goto :goto_3

    .line 747
    :pswitch_1
    const/16 v11, 0x8

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udprsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 751
    .restart local v7    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 753
    :pswitch_2
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthpsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .line 757
    .restart local v7    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 759
    :pswitch_3
    const/16 v11, 0xb

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0xa

    aput-object v2, v7, v11

    .line 763
    .restart local v7    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 765
    :pswitch_4
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "racoon":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "hybridrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v0, v7, v11

    const/4 v11, 0x4

    aput-object v8, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .restart local v7    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 776
    .restart local v5    # "mtpd":[Ljava/lang/String;
    :pswitch_5
    const/16 v11, 0x14

    new-array v5, v11, [Ljava/lang/String;

    .end local v5    # "mtpd":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v5, v11

    const/4 v11, 0x1

    const-string v12, "pptp"

    aput-object v12, v5, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x3

    const-string v12, "1723"

    aput-object v12, v5, v11

    const/4 v11, 0x4

    const-string v12, "name"

    aput-object v12, v5, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x6

    const-string v12, "password"

    aput-object v12, v5, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v5, v11

    const/16 v11, 0x8

    const-string v12, "linkname"

    aput-object v12, v5, v11

    const/16 v11, 0x9

    const-string v12, "vpn"

    aput-object v12, v5, v11

    const/16 v11, 0xa

    const-string v12, "refuse-eap"

    aput-object v12, v5, v11

    const/16 v11, 0xb

    const-string v12, "nodefaultroute"

    aput-object v12, v5, v11

    const/16 v11, 0xc

    const-string v12, "usepeerdns"

    aput-object v12, v5, v11

    const/16 v11, 0xd

    const-string v12, "idle"

    aput-object v12, v5, v11

    const/16 v11, 0xe

    const-string v12, "1800"

    aput-object v12, v5, v11

    const/16 v11, 0xf

    const-string v12, "mtu"

    aput-object v12, v5, v11

    const/16 v11, 0x10

    const-string v12, "1400"

    aput-object v12, v5, v11

    const/16 v11, 0x11

    const-string v12, "mru"

    aput-object v12, v5, v11

    const/16 v11, 0x12

    const-string v12, "1400"

    aput-object v12, v5, v11

    const/16 v12, 0x13

    iget-boolean v11, p1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v11, :cond_b

    const-string v11, "+mppe"

    :goto_5
    aput-object v11, v5, v12

    .line 783
    .restart local v5    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    .line 776
    .end local v5    # "mtpd":[Ljava/lang/String;
    :cond_b
    const-string v11, "nomppe"

    goto :goto_5

    .line 786
    .restart local v5    # "mtpd":[Ljava/lang/String;
    :pswitch_6
    const/16 v11, 0x14

    new-array v5, v11, [Ljava/lang/String;

    .end local v5    # "mtpd":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v5, v11

    const/4 v11, 0x1

    const-string v12, "l2tp"

    aput-object v12, v5, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x3

    const-string v12, "1701"

    aput-object v12, v5, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x5

    const-string v12, "name"

    aput-object v12, v5, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v5, v11

    const/4 v11, 0x7

    const-string v12, "password"

    aput-object v12, v5, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v5, v11

    const/16 v11, 0x9

    const-string v12, "linkname"

    aput-object v12, v5, v11

    const/16 v11, 0xa

    const-string v12, "vpn"

    aput-object v12, v5, v11

    const/16 v11, 0xb

    const-string v12, "refuse-eap"

    aput-object v12, v5, v11

    const/16 v11, 0xc

    const-string v12, "nodefaultroute"

    aput-object v12, v5, v11

    const/16 v11, 0xd

    const-string v12, "usepeerdns"

    aput-object v12, v5, v11

    const/16 v11, 0xe

    const-string v12, "idle"

    aput-object v12, v5, v11

    const/16 v11, 0xf

    const-string v12, "1800"

    aput-object v12, v5, v11

    const/16 v11, 0x10

    const-string v12, "mtu"

    aput-object v12, v5, v11

    const/16 v11, 0x11

    const-string v12, "1400"

    aput-object v12, v5, v11

    const/16 v11, 0x12

    const-string v12, "mru"

    aput-object v12, v5, v11

    const/16 v11, 0x13

    const-string v12, "1400"

    aput-object v12, v5, v11

    .restart local v5    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    .line 739
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 774
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected startMonitoringInternal()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public declared-synchronized stopLegacyVpn()V
    .locals 2

    .prologue
    .line 824
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 828
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 831
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    :cond_0
    monitor-exit p0

    return-void

    .line 831
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 824
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public teardown()Z
    .locals 1

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
