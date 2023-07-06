.class public Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->reset()V

    .line 687
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V
    .locals 0
    .param p2, "txPkts"    # J
    .param p4, "rxPkts"    # J

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-wide p2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 691
    iput-wide p4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 692
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;)V
    .locals 2
    .param p2, "sum"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 696
    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 697
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 700
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 701
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 702
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTxRxSum()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 714
    const/4 v9, 0x0

    .local v9, "txUpdated":Z
    const/4 v4, 0x0

    .line 715
    .local v4, "rxUpdated":Z
    const-wide/16 v7, 0x0

    .local v7, "txSum":J
    const-wide/16 v2, 0x0

    .line 716
    .local v2, "rxSum":J
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInterfaceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 718
    .local v1, "interfaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    .line 719
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v5

    .line 720
    .local v5, "stats":J
    cmp-long v10, v5, v11

    if-lez v10, :cond_0

    .line 721
    const/4 v9, 0x1

    .line 722
    add-long/2addr v7, v5

    .line 724
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v5

    .line 725
    cmp-long v10, v5, v11

    if-lez v10, :cond_1

    .line 726
    const/4 v4, 0x1

    .line 727
    add-long/2addr v2, v5

    .line 718
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v5    # "stats":J
    :cond_2
    if-eqz v9, :cond_3

    iput-wide v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 731
    :cond_3
    if-eqz v4, :cond_4

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 732
    :cond_4
    return-void
.end method
