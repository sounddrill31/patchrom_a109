.class Lcom/android/internal/telephony/RILRequest;
.super Ljava/lang/Object;
.source "RIL.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RilRequest"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field private static sPool:Lcom/android/internal/telephony/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sRandom:Ljava/util/Random;


# instance fields
.field mNext:Lcom/android/internal/telephony/RILRequest;

.field mParcel:Landroid/os/Parcel;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sRandom:Ljava/util/Random;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 176
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    return-void
.end method

.method static obtain(ILandroid/os/Message;I)Lcom/android/internal/telephony/RILRequest;
    .locals 3
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "simId"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    sget-object v2, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 198
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 199
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    sput-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 200
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 201
    sget v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    .line 203
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lcom/android/internal/telephony/RILRequest;

    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {v0}, Lcom/android/internal/telephony/RILRequest;-><init>()V

    .line 209
    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndIncrement(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 211
    iput p0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 212
    iput-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 215
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 216
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 220
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    return-object v0
.end method

.method static resetSerial(I)V
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 249
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 250
    return-void
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 277
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 283
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 292
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 232
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    sget v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 234
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    iput-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 235
    sput-object p0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 236
    sget v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 239
    :cond_0
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    int-to-long v6, v6

    const-wide/32 v8, -0x80000000

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    rem-long v0, v6, v8

    .line 260
    .local v0, "adjustedSerial":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "sn":Ljava/lang/String;
    const/16 v6, 0x5b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "s":I
    :goto_0
    rsub-int/lit8 v6, v3, 0x4

    if-ge v2, v6, :cond_0

    .line 265
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
