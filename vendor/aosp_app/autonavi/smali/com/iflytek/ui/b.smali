.class Lcom/iflytek/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/ui/i$a;


# instance fields
.field final synthetic a:Lcom/iflytek/ui/i;


# direct methods
.method constructor <init>(Lcom/iflytek/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/i;

    invoke-virtual {v0}, Lcom/iflytek/ui/i;->dismiss()V

    return-void
.end method
