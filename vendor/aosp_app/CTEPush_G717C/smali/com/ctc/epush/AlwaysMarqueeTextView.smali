.class public Lcom/ctc/epush/AlwaysMarqueeTextView;
.super Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ctc/epush/AlwaysMarqueeTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/ctc/epush/AlwaysMarqueeTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/ctc/epush/AlwaysMarqueeTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setGravity(I)V

    invoke-virtual {p0, v1}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {p0, v1}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
