.class Landroid/location/LocationManager$GpsStatusListenerTransport;
.super Landroid/location/IGpsStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGpsHandler:Landroid/os/Handler;

.field private final mListener:Landroid/location/GpsStatus$Listener;

.field private mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .param p2, "listener"    # Landroid/location/GpsStatus$Listener;

    .prologue
    .line 1384
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    .line 1476
    new-instance v0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    .line 1385
    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1387
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    .prologue
    .line 1389
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    .line 1476
    new-instance v0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    .line 1390
    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1391
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    .line 1392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1393
    return-void
.end method

.method static synthetic access$300(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager$GpsStatusListenerTransport;

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager$GpsStatusListenerTransport;

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager$GpsStatusListenerTransport;

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .param p1, "ttff"    # I

    .prologue
    .line 1415
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v1}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/GpsStatus;->setTimeToFirstFix(I)V

    .line 1417
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1418
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1419
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1421
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStarted()V
    .locals 2

    .prologue
    .line 1397
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1398
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1399
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1400
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1402
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStopped()V
    .locals 2

    .prologue
    .line 1406
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1407
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1408
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1409
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1411
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3e8

    .line 1464
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    if-eqz v1, :cond_0

    .line 1465
    iget-object v2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1466
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1469
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1471
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1472
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1474
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1467
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[F[I[I[II)V
    .locals 11
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # [I
    .param p7, "almanacMask"    # [I
    .param p8, "usedInFixMask"    # [I
    .param p9, "timeToFirstFix"    # I

    .prologue
    .line 1448
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1449
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v1}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[F[I[I[I)V

    .line 1452
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v1}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v1

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/location/GpsStatus;->setTimeToFirstFix(I)V

    .line 1454
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 1455
    .local v10, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v10, Landroid/os/Message;->what:I

    .line 1457
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1458
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1460
    .end local v10    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
