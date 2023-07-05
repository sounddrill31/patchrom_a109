.class Lcom/android/internal/policy/impl/PhoneWindowManager$MenuPendingObj;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuPendingObj"
.end annotation


# instance fields
.field mockMenuKeyDown:Z

.field pendingEvent:Landroid/view/KeyEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuPendingObj;-><init>()V

    return-void
.end method


# virtual methods
.method isEmpty()Z
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuPendingObj;->pendingEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuPendingObj;->pendingEvent:Landroid/view/KeyEvent;

    .line 959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuPendingObj;->mockMenuKeyDown:Z

    .line 960
    return-void
.end method
