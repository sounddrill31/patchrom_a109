.class Lcom/android/internal/telephony/cat/bip/TcpChannel;
.super Lcom/android/internal/telephony/cat/bip/Channel;
.source "Channel.java"


# static fields
.field private static final TCP_CONN_TIMEOUT:I = 0x3a98


# instance fields
.field mInput:Ljava/io/DataInputStream;

.field mOutput:Ljava/io/BufferedOutputStream;

.field mSocket:Ljava/net/Socket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p8, "bipManager"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    const/4 v0, 0x0

    .line 987
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/cat/bip/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 981
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 982
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 983
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 988
    return-void
.end method

.method private onOpenChannelCompleted()V
    .locals 0

    .prologue
    .line 1084
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x0

    .line 1110
    .local v0, "ret":I
    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x0

    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 1
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 991
    const/4 v0, 0x0

    .line 1054
    .local v0, "ret":I
    return v0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;)I
    .locals 1
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    .prologue
    .line 1237
    const/4 v0, 0x0

    .line 1294
    .local v0, "ret":I
    return v0
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    .locals 1
    .param p1, "requestCount"    # I

    .prologue
    .line 1115
    new-instance v0, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 1171
    .local v0, "ret":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    return-object v0
.end method

.method public sendData([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1223
    .local v0, "ret":I
    return v0
.end method
