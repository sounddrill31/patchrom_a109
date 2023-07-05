.class public Lcom/android/internal/telephony/cat/bip/BearerDesc;
.super Ljava/lang/Object;
.source "BearerDesc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/bip/BearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerService:I

.field public bearerType:I

.field public connectionElement:I

.field public dataCompression:I

.field public dataRate:I

.field public delay:I

.field public headerCompression:I

.field public mean:I

.field public pdpType:I

.field public peak:I

.field public precedence:I

.field public reliability:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/android/internal/telephony/cat/bip/BearerDesc$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/bip/BearerDesc$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->precedence:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->delay:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->reliability:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->peak:I

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->mean:I

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->pdpType:I

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->dataCompression:I

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->headerCompression:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->dataRate:I

    .line 75
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerService:I

    .line 76
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->connectionElement:I

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->precedence:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->delay:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->reliability:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->peak:I

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->mean:I

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->pdpType:I

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->dataCompression:I

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->headerCompression:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->dataRate:I

    .line 75
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerService:I

    .line 76
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->connectionElement:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->precedence:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->delay:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->reliability:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->peak:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->mean:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->pdpType:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->dataCompression:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->headerCompression:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->dataRate:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerService:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->connectionElement:I

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/bip/BearerDesc$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/bip/BearerDesc$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->precedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->delay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->reliability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->peak:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->mean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->pdpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->dataCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->headerCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->dataRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->connectionElement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void
.end method
