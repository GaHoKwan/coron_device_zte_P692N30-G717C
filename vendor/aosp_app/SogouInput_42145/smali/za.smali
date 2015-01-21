.class public Lza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformTransferActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lza;->a:Lcom/sohu/inputmethod/platform/PlatformTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lza;->a:Lcom/sohu/inputmethod/platform/PlatformTransferActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->finish()V

    .line 98
    return-void
.end method
