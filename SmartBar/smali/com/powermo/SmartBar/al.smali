.class Lcom/powermo/SmartBar/al;
.super Lcom/powermo/SmartBar/at;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ai;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ai;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/al;->a:Lcom/powermo/SmartBar/ai;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powermo/SmartBar/at;-><init>(Lcom/powermo/SmartBar/ai;Lcom/powermo/SmartBar/at;)V

    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powermo/SmartBar/al;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v1}, Lcom/powermo/SmartBar/ai;->c(Lcom/powermo/SmartBar/ai;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/al;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v1}, Lcom/powermo/SmartBar/ai;->c(Lcom/powermo/SmartBar/ai;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/powermo/SmartBar/al;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v1}, Lcom/powermo/SmartBar/ai;->c(Lcom/powermo/SmartBar/ai;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/powermo/SmartBar/al;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v1}, Lcom/powermo/SmartBar/ai;->c(Lcom/powermo/SmartBar/ai;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/powermo/SmartBar/ar;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p1, Lcom/powermo/SmartBar/ar;->d:[I

    aget v1, v1, p2

    if-ne v1, v2, :cond_1

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/powermo/SmartBar/al;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v3}, Lcom/powermo/SmartBar/ai;->a(Lcom/powermo/SmartBar/ai;)Lcom/powermo/b/a;

    move-result-object v3

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-virtual {v3, v0, p2, v2}, Lcom/powermo/b/a;->a(IIZ)V

    iget-object v0, p1, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/powermo/SmartBar/al;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    const v2, 0x7f020025

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_3
    iget-object v0, p1, Lcom/powermo/SmartBar/ar;->d:[I

    aput v1, v0, p2

    iget-object v0, p0, Lcom/powermo/SmartBar/al;->a:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ai;->g()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    const v2, 0x7f020016

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    const v2, 0x7f020022

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_5
    const v2, 0x7f020013

    goto :goto_4
.end method

.method public b(Lcom/powermo/SmartBar/ar;I)V
    .locals 3

    iget-object v0, p1, Lcom/powermo/SmartBar/ar;->d:[I

    aget v1, v0, p2

    iget-object v0, p1, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/powermo/SmartBar/al;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const v1, 0x7f020025

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v1, 0x7f020016

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const v1, 0x7f020022

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const v1, 0x7f020013

    goto :goto_2
.end method
