.class public Landroid/media/MediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field final mFormat:Landroid/media/MediaFormat;

.field final mTrackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1765
    new-instance v0, Landroid/media/MediaPlayer$TrackInfo$1;

    invoke-direct {v0}, Landroid/media/MediaPlayer$TrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/media/MediaFormat;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput p1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    .line 1736
    iput-object p2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1737
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    .line 1716
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, "language":Ljava/lang/String;
    iget v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1719
    const-string v1, "application/x-subrip"

    invoke-static {v1, v0}, Landroid/media/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1731
    :goto_0
    return-void

    .line 1721
    :cond_0
    iget v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1722
    const-string/jumbo v1, "text/vtt"

    invoke-static {v1, v0}, Landroid/media/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1724
    iget-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v2, "is-autoselect"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1725
    iget-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v2, "is-default"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1726
    iget-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v2, "is-forced-subtitle"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 1728
    :cond_1
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1729
    iget-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v2, "language"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1744
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 1696
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1698
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1700
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1687
    iget-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v2, "language"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "und"

    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 1677
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1752
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    invoke-virtual {p0}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1755
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1756
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-autoselect"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1757
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-default"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-forced-subtitle"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    :cond_0
    return-void
.end method
