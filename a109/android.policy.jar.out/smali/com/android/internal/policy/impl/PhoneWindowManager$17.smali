.class Lcom/android/internal/policy/impl/PhoneWindowManager$17;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 4317
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4319
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 4321
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 4322
    return-void
.end method
