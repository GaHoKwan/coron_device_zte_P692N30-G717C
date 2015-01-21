.class Llo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Llf;


# direct methods
.method constructor <init>(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Llo;->a:Llf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Llo;->a:Llf;

    invoke-static {v0}, Llf;->d(Llf;)V

    .line 610
    return-void
.end method
