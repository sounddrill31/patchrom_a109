.class final Landroid/accessibilityservice/AccessibilityServiceInfo$1;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/accessibilityservice/AccessibilityServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 934
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 935
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->access$000(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/os/Parcel;)V

    .line 936
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 940
    new-array v0, p1, [Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo$1;->newArray(I)[Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    return-object v0
.end method
