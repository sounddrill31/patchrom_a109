.class Lcom/android/internal/app/ActionBarImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$000(Lcom/android/internal/app/ActionBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$400(Lcom/android/internal/app/ActionBarImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->access$502(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 137
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->completeDeferredDestroyActionMode()V

    .line 138
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$600(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$600(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 141
    :cond_2
    return-void
.end method
