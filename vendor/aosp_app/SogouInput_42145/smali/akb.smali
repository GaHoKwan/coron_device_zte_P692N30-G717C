.class Lakb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lajq;


# direct methods
.method constructor <init>(Lajq;)V
    .locals 0
    .parameter

    .prologue
    .line 1159
    iput-object p1, p0, Lakb;->a:Lajq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 1161
    iget-object v0, p0, Lakb;->a:Lajq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lajq;->a(Lajq;Z)Z

    .line 1162
    return-void
.end method
