.class Lcom/powermo/SmartBar/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/SmartBar/ae;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/SmartApplication;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/SmartApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cr;->a:Lcom/powermo/SmartBar/SmartApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/cr;->a:Lcom/powermo/SmartBar/SmartApplication;

    invoke-static {v0}, Lcom/powermo/SmartBar/SmartBarService;->b(Landroid/content/Context;)V

    return-void
.end method
