.class public Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SpnOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirtualSpnByImsi"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public pattern:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SpnOverride;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/SpnOverride;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->this$0:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->name:Ljava/lang/String;

    .line 75
    return-void
.end method
