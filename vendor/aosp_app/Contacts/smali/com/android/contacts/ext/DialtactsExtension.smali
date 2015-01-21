.class public Lcom/android/contacts/ext/DialtactsExtension;
.super Ljava/lang/Object;
.source "DialtactsExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialtactsExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkComponentName(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .parameter "intent"
    .parameter "commd"

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public startActivity(Ljava/lang/String;)Z
    .locals 2
    .parameter "commd"

    .prologue
    .line 14
    const-string v0, "DialtactsExtension"

    const-string v1, "DialerSearchAdapter: [startActivity()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v0, 0x0

    return v0
.end method
