.class public Lcom/zte/update/ui/OptionButton;
.super Landroid/widget/ImageButton;
.source "OptionButton.java"


# static fields
.field public static final TYPE_COMPELETE:I = 0x4

.field public static final TYPE_CONTINUE:I = 0x2

.field public static final TYPE_PAUSE:I = 0x1

.field public static final TYPE_STOP:I = 0x3

.field public static final TYPE_UPDATE:I


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/ui/OptionButton;->type:I

    .line 25
    invoke-virtual {p0}, Lcom/zte/update/ui/OptionButton;->setUpdate()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/ui/OptionButton;->type:I

    .line 29
    invoke-virtual {p0}, Lcom/zte/update/ui/OptionButton;->setUpdate()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/ui/OptionButton;->type:I

    .line 21
    invoke-virtual {p0}, Lcom/zte/update/ui/OptionButton;->setUpdate()V

    .line 22
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/zte/update/ui/OptionButton;->type:I

    return v0
.end method

.method public setCompelete()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lcom/zte/update/ui/OptionButton;->type:I

    .line 59
    const v0, 0x7f02001a

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setImageResource(I)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public setContinue()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/update/ui/OptionButton;->type:I

    .line 49
    const v0, 0x7f02001c

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setImageResource(I)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public setPause()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/update/ui/OptionButton;->type:I

    .line 39
    const v0, 0x7f020037

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setImageResource(I)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 41
    return-void
.end method

.method public setStop()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/update/ui/OptionButton;->type:I

    .line 54
    const v0, 0x7f020049

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setImageResource(I)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public setUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/zte/update/ui/OptionButton;->type:I

    .line 44
    const v0, 0x7f020050

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/OptionButton;->setImageResource(I)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 46
    return-void
.end method
