.class final Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecurityPolicy"
.end annotation


# static fields
.field private static final RETRIEVAL_ALLOWING_EVENT_TYPES:I = 0x1b9bf

.field private static final VALID_ACTIONS:I = 0x1fffff


# instance fields
.field private mActiveWindowId:I

.field private mTouchInteractionInProgress:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2729
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 2729
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .prologue
    .line 2729
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method private canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v1, 0x1

    .line 2772
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 2773
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_0

    .line 2794
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v2, v3, :cond_0

    :goto_0
    :sswitch_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2773
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_0
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    .line 2914
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4200()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2922
    :cond_0
    return-void

    .line 2917
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2918
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFocusedWindowId()I
    .locals 4

    .prologue
    .line 2933
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2934
    .local v0, "token":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 2935
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowIdLocked(Landroid/os/IBinder;Landroid/util/SparseArray;)I

    move-result v1

    .line 2937
    .local v1, "windowId":I
    if-gez v1, :cond_0

    .line 2938
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowIdLocked(Landroid/os/IBinder;Landroid/util/SparseArray;)I

    move-result v1

    .line 2941
    :cond_0
    monitor-exit v3

    .line 2947
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "windowId":I
    :goto_0
    return v1

    .line 2942
    .restart local v0    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2944
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 2947
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getFocusedWindowIdLocked(Landroid/os/IBinder;Landroid/util/SparseArray;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2951
    .local p2, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2952
    .local v1, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2953
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 2954
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2957
    :goto_1
    return v2

    .line 2952
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2957
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActionPermitted(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 2910
    const v0, 0x1fffff

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRetrievalAllowingWindow(I)Z
    .locals 1
    .param p1, "windowId"    # I

    .prologue
    .line 2906
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "windowId"    # I

    .prologue
    .line 2848
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPerformActionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "windowId"    # I
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 2853
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isActionPermitted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 2859
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2865
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2866
    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility serivce "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "declare android:canRetrieveWindowContent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 2870
    :cond_0
    return-void
.end method

.method public getRetrievalAllowingWindowLocked()I
    .locals 1

    .prologue
    .line 2844
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2899
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v1, -0x3

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchInteractionEnd()V
    .locals 1

    .prologue
    .line 2831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 2840
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 2841
    return-void
.end method

.method public onTouchInteractionStart()V
    .locals 1

    .prologue
    .line 2827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 2828
    return-void
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 2873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2874
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_2

    .line 2877
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result p1

    .line 2891
    .end local p1    # "userId":I
    :cond_1
    :goto_0
    return p1

    .line 2879
    .restart local p1    # "userId":I
    :cond_2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2880
    .local v1, "callingUserId":I
    if-eq v1, p1, :cond_1

    .line 2883
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2885
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission INTERACT_ACROSS_USERS or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2889
    :cond_3
    const/4 v2, -0x2

    if-eq p1, v2, :cond_4

    const/4 v2, -0x3

    if-ne p1, v2, :cond_5

    .line 2891
    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result p1

    goto :goto_0

    .line 2893
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateActiveWindow(II)V
    .locals 1
    .param p1, "windowId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2810
    sparse-switch p2, :sswitch_data_0

    .line 2824
    :cond_0
    :goto_0
    return-void

    .line 2812
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2813
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_0

    .line 2819
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v0, :cond_0

    .line 2820
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_0

    .line 2810
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2799
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x1b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2800
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 2802
    :cond_0
    return-void
.end method
