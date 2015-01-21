.class public Lop;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lop;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    :pswitch_0
    return-void

    .line 141
    :pswitch_1
    iget-object v0, p0, Lop;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-virtual {v0, v3, v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(II)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lop;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(II)V

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lop;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(II)V

    goto :goto_0

    .line 156
    :pswitch_4
    iget-object v0, p0, Lop;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(II)V

    goto :goto_0

    .line 167
    :pswitch_5
    iget-object v0, p0, Lop;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-virtual {v0, v3, v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(II)V

    goto :goto_0

    .line 170
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lop;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lop;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0xdb
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
