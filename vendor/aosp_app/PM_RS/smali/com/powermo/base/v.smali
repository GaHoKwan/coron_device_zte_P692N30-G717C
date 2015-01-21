.class final Lcom/powermo/base/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/base/h;


# instance fields
.field final synthetic a:Lcom/powermo/base/AndroidServiceBase;


# direct methods
.method constructor <init>(Lcom/powermo/base/AndroidServiceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/base/v;->a:Lcom/powermo/base/AndroidServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/powermo/base/v;->a:Lcom/powermo/base/AndroidServiceBase;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/base/AndroidServiceBase;->a(Z)V

    return-void
.end method
