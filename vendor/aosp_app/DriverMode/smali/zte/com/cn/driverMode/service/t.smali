.class final Lzte/com/cn/driverMode/service/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/m;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/m;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/t;->a:Lzte/com/cn/driverMode/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(F)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/t;->a:Lzte/com/cn/driverMode/service/m;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/m;->a(F)V

    return-void
.end method

.method public final onWarning(Lcom/nuance/dragon/toolkit/vocon/VoconWarning;)V
    .locals 0

    return-void
.end method
