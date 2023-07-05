.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mStoped:Z

.field mySimId:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 816
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 1
    .param p2, "simId"    # I

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    .line 819
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 820
    iput p2, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    .line 821
    return-void
.end method

.method private getRilSocketName(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 824
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    .line 831
    :goto_0
    return-object v0

    .line 826
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_3:Ljava/lang/String;

    goto :goto_0

    .line 828
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_4:Ljava/lang/String;

    goto :goto_0

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 838
    const/4 v6, 0x0

    .line 839
    .local v6, "retryCount":I
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v9

    .line 844
    .local v9, "socketRil":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-boolean v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    if-eqz v11, :cond_0

    .line 965
    :goto_1
    return-void

    .line 846
    :cond_0
    const/4 v7, 0x0

    .line 849
    .local v7, "s":Landroid/net/LocalSocket;
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v9

    .line 852
    const/4 v4, 0x0

    .line 853
    .local v4, "m3GsimId":I
    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v4

    .line 855
    const/4 v11, 0x1

    if-lt v4, v11, :cond_3

    .line 856
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-nez v11, :cond_2

    .line 857
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v9

    .line 862
    :cond_1
    :goto_2
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "3G switched, switch sockets ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$602(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_3
    :try_start_1
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 872
    .end local v7    # "s":Landroid/net/LocalSocket;
    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 874
    .local v2, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v8, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 907
    const/4 v6, 0x0

    .line 909
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v8, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 910
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 911
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 913
    const/4 v3, 0x0

    .line 915
    .local v3, "length":I
    :try_start_4
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 920
    .local v1, "is":Ljava/io/InputStream;
    :goto_4
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    invoke-static {v1, v11}, Lcom/android/internal/telephony/RIL;->access$700(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    .line 922
    if-gez v3, :cond_7

    .line 944
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_5
    :try_start_5
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disconnected from \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 950
    :try_start_6
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 954
    :goto_6
    :try_start_7
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 955
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-static {v11}, Lcom/android/internal/telephony/RILRequest;->resetSerial(I)V

    .line 958
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 959
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    .end local v4    # "m3GsimId":I
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v10

    .line 960
    .local v10, "tr":Ljava/lang/Throwable;
    const-string v11, "RILJ"

    const-string v12, "Uncaught exception"

    invoke-static {v11, v12, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;I)V

    goto/16 :goto_1

    .line 859
    .end local v10    # "tr":Ljava/lang/Throwable;
    .restart local v4    # "m3GsimId":I
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :cond_2
    :try_start_8
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-ne v11, v4, :cond_1

    .line 860
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v11, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto/16 :goto_2

    .line 865
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$602(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 875
    :catch_1
    move-exception v0

    .line 877
    .local v0, "ex":Ljava/io/IOException;
    :goto_7
    if-eqz v7, :cond_4

    .line 878
    :try_start_9
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 887
    :cond_4
    :goto_8
    const/16 v11, 0x10

    if-ne v6, v11, :cond_6

    .line 888
    :try_start_a
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 899
    :cond_5
    :goto_9
    const-wide/16 v11, 0xfa0

    :try_start_b
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 903
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 904
    goto/16 :goto_0

    .line 892
    :cond_6
    if-lez v6, :cond_5

    const/16 v11, 0x10

    if-ge v6, v11, :cond_5

    .line 893
    :try_start_c
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket; retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_9

    .line 927
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local v3    # "length":I
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_7
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 928
    .local v5, "p":Landroid/os/Parcel;
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 929
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 933
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v11, v5}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 934
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    .line 936
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v5    # "p":Landroid/os/Parcel;
    :catch_2
    move-exception v0

    .line 937
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket closed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 939
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 940
    .restart local v10    # "tr":Ljava/lang/Throwable;
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_5

    .line 880
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    .end local v8    # "s":Landroid/net/LocalSocket;
    .end local v10    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/io/IOException;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :catch_4
    move-exception v11

    goto/16 :goto_8

    .line 900
    :catch_5
    move-exception v11

    goto/16 :goto_a

    .line 951
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local v3    # "length":I
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    goto/16 :goto_6

    .line 875
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    :catch_7
    move-exception v0

    move-object v7, v8

    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_7
.end method
