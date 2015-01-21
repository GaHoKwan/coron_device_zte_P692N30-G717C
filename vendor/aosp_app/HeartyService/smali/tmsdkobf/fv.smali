.class public final Ltmsdkobf/fv;
.super Ljava/lang/Object;


# direct methods
.method public static getSDKVersion()I
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
