.class public Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$Endpoints;
.super Ljava/lang/Object;
.source "OAuthConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Endpoints"
.end annotation


# static fields
.field public static final Authorization:Ljava/lang/String; = "https://accounts.google.com/o/oauth2/auth"

.field public static final Token:Ljava/lang/String; = "https://accounts.google.com/o/oauth2/token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
