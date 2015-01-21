.class public Laqq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 6045
    iput-object p1, p0, Laqq;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6050
    .line 6051
    packed-switch p3, :pswitch_data_0

    .line 6062
    :goto_0
    iget-object v0, p0, Laqq;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6063
    return-void

    .line 6053
    :pswitch_0
    iget-object v0, p0, Laqq;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(I)V

    goto :goto_0

    .line 6056
    :pswitch_1
    iget-object v0, p0, Laqq;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(I)V

    goto :goto_0

    .line 6059
    :pswitch_2
    iget-object v0, p0, Laqq;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(I)V

    goto :goto_0

    .line 6051
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
