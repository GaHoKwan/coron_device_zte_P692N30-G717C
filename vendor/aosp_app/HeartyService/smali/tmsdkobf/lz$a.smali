.class Ltmsdkobf/lz$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static EE:Ltmsdkobf/lz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ltmsdkobf/lz;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "c_config"

    invoke-static {v1, v2}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltmsdkobf/lz;-><init>(Ltmsdkobf/jg;Ltmsdkobf/lz$1;)V

    sput-object v0, Ltmsdkobf/lz$a;->EE:Ltmsdkobf/lz;

    return-void
.end method
