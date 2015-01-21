.class Lake;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lajq;


# direct methods
.method constructor <init>(Lajq;)V
    .locals 0
    .parameter

    .prologue
    .line 1204
    iput-object p1, p0, Lake;->a:Lajq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1208
    iget-object v0, p0, Lake;->a:Lajq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lajq;->b(Lajq;Z)V

    .line 1209
    return-void
.end method
