.class public Lcom/autonavi/xmgd/view/GPSInfoView;
.super Landroid/view/View;


# instance fields
.field gps:Lcom/autonavi/xmgd/navigator/GPSInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/GPSInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/GPSInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GPSInfoView;->gps:Lcom/autonavi/xmgd/navigator/GPSInfo;

    check-cast p1, Lcom/autonavi/xmgd/navigator/GPSInfo;

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GPSInfoView;->gps:Lcom/autonavi/xmgd/navigator/GPSInfo;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GPSInfoView;->gps:Lcom/autonavi/xmgd/navigator/GPSInfo;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a(Landroid/graphics/Canvas;)V

    return-void
.end method
