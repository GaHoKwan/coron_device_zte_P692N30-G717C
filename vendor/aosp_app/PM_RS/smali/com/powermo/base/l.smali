.class public final Lcom/powermo/base/l;
.super Lcom/powermo/base/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "config.pmrsv1.port"

    const/16 v1, 0x301f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powermo/base/o;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
