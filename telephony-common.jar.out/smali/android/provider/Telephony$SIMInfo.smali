.class public Landroid/provider/Telephony$SIMInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$SIMInfo$ErrorCode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# instance fields
.field public mColor:I

.field public mDataRoaming:I

.field public mDefaultName:Ljava/lang/String;

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mICCId:Ljava/lang/String;

.field public mNameSource:I

.field public mNumber:Ljava/lang/String;

.field public mOperator:Ljava/lang/String;

.field public mSimId:J

.field public mSlot:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3618
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 3620
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mDefaultName:Ljava/lang/String;

    .line 3624
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 3626
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    .line 3630
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 3632
    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 3634
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mOperator:Ljava/lang/String;

    .line 3637
    return-void
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 3822
    const-string v4, "[getAllSIMCount]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3824
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3825
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getAllSimCountAdp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3826
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3827
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3828
    .local v1, "count":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3834
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 3830
    :catch_0
    move-exception v2

    .line 3831
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getAllSimCountAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3834
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3686
    const-string v5, "[getAllSIMList]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3688
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3689
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getAllSimInfoListAdp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3690
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3691
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3698
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3694
    :catch_0
    move-exception v1

    .line 3695
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getAllSimInfoListAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 3698
    goto :goto_0
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 3800
    const-string v4, "[getInsertedSIMCount]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3802
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3803
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInsertedSimCountAdp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3804
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3805
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3806
    .local v1, "count":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3812
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 3808
    :catch_0
    move-exception v2

    .line 3809
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getInsertedSimCountAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3810
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3812
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3653
    const-string v5, "[getInsertedSIMList]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3655
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3656
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getInsertedSimInfoListAdp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3657
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3658
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3665
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3661
    :catch_0
    move-exception v1

    .line 3662
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getInsertedSimInfoListAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3663
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 3665
    goto :goto_0
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3778
    const-string v5, "[getSIMInfoByICCId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3780
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3781
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByIccIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3782
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3783
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3790
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 3786
    :catch_0
    move-exception v1

    .line 3787
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 3790
    goto :goto_0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMId"    # J

    .prologue
    const/4 v4, 0x0

    .line 3709
    const-string v5, "[getSIMInfoById]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3711
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3712
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3713
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3714
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3721
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 3717
    :catch_0
    move-exception v1

    .line 3718
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3719
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 3721
    goto :goto_0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3732
    const-string v5, "[getSIMInfoByName]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3734
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3735
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByNameAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3736
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3737
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3744
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 3740
    :catch_0
    move-exception v1

    .line 3741
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByNameAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3742
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 3744
    goto :goto_0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cardSlot"    # I

    .prologue
    const/4 v4, 0x0

    .line 3755
    const-string v5, "[getSIMInfoBySlot]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3757
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3758
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoBySlotAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3759
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3760
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3767
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 3763
    :catch_0
    move-exception v1

    .line 3764
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoBySlotAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3765
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 3767
    goto :goto_0
.end method

.method public static getSIMInfoInstance()Landroid/provider/Telephony$SIMInfo;
    .locals 2

    .prologue
    .line 3674
    const-string v1, "[getSIMInfoInstance]"

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3675
    new-instance v0, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {v0}, Landroid/provider/Telephony$SIMInfo;-><init>()V

    .line 3676
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    return-object v0
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ICCId"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 4007
    const-string v5, "[insertICCId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4009
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4010
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "addSimInfoRecordAdp"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4011
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 4012
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4019
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 4015
    :catch_0
    move-exception v1

    .line 4016
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for insertIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4017
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 4019
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 4070
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMInfo]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    return-void
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "color"    # I
    .param p2, "SIMId"    # J

    .prologue
    .line 3935
    const-string v4, "[setColor]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3937
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3938
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setColorAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3939
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3940
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3941
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3947
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3943
    :catch_0
    move-exception v1

    .line 3944
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setColorAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3945
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3947
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "roaming"    # I
    .param p2, "SIMId"    # J

    .prologue
    .line 3983
    const-string v4, "[setDataRoaming]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3985
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3986
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDataRoamingAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3987
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3988
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3989
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3995
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3991
    :catch_0
    move-exception v1

    .line 3992
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDataRoamingAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3993
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3995
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4030
    const-string v4, "[setDefaultName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4032
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4033
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDefaultNameAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4034
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 4035
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4036
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4042
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 4038
    :catch_0
    move-exception v1

    .line 4039
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDefaultNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4042
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameSource"    # J

    .prologue
    .line 4054
    const-string v4, "[setDefaultNameEx]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4056
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4057
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDefaultNameExAdp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4058
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 4059
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4060
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4066
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 4062
    :catch_0
    move-exception v1

    .line 4063
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDefaultNameExAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4064
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4066
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "format"    # I
    .param p2, "SIMId"    # J

    .prologue
    .line 3959
    const-string v4, "[setDispalyNumberFormat]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3961
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3962
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDispalyNumberFormatAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3963
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3964
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3965
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3971
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3967
    :catch_0
    move-exception v1

    .line 3968
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDispalyNumberFormatAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3969
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3971
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "SIMId"    # J

    .prologue
    .line 3862
    const-string v4, "[setDisplayName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3864
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3865
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDisplayNameAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3866
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3867
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3868
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3874
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3870
    :catch_0
    move-exception v1

    .line 3871
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDisplayNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3874
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "SIMId"    # J
    .param p4, "Source"    # J

    .prologue
    .line 3887
    const-string v4, "[setDisplayNameEx]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3889
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3890
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDisplayNameExAdp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3891
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3892
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3893
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3899
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3895
    :catch_0
    move-exception v1

    .line 3896
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDisplayNameExAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3897
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3899
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SIMId"    # J

    .prologue
    .line 3911
    const-string v4, "[setNumber]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3913
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3914
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setNumberAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3915
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3916
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3917
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3923
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3919
    :catch_0
    move-exception v1

    .line 3920
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setNumberAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3921
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3923
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 3838
    const-string v4, "[setOperatorById]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3840
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3841
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setOperatorByIdAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3842
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3843
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3844
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3850
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3846
    :catch_0
    move-exception v1

    .line 3847
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setOperatorByIdAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3848
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3850
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method
