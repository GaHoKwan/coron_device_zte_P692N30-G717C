.class Lapg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk;


# instance fields
.field final synthetic a:Lapf;


# direct methods
.method constructor <init>(Lapf;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lapg;->a:Lapf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Lcom/sohu/inputmethod/gesture/Gesture;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lapg;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lapg;->a:Lapf;

    invoke-virtual {p2}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lapf;->a(Lapf;Ljava/util/ArrayList;)V

    .line 182
    iget-object v0, p0, Lapg;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lapi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lapg;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lapi;

    move-result-object v0

    iget-object v1, p0, Lapg;->a:Lapf;

    invoke-static {v1}, Lapf;->a(Lapf;)[S

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lapi;->a([SLcom/sohu/inputmethod/gesture/Gesture;)Z

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lapg;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lapi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lapg;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lapi;

    move-result-object v0

    invoke-interface {v0, v2, p2}, Lapi;->a([SLcom/sohu/inputmethod/gesture/Gesture;)Z

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
