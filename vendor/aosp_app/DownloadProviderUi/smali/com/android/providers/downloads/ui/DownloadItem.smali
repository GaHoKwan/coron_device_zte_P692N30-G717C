.class public Lcom/android/providers/downloads/ui/DownloadItem;
.super Landroid/widget/RelativeLayout;
.source "DownloadItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static CHECKMARK_AREA:F


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDownloadId:J

.field private mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

.field private mFileName:Ljava/lang/String;

.field private mIsInDownEvent:Z

.field private mMimeType:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/high16 v0, -0x4080

    sput v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 57
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 52
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 47
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 48
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 61
    sget v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 69
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 70
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 117
    :goto_1
    return v0

    .line 91
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 92
    iput-boolean v4, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    goto :goto_0

    .line 102
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->toggle()V

    .line 104
    invoke-virtual {p0, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 105
    const/4 v0, 0x1

    .line 107
    :cond_1
    iput-boolean v3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    goto :goto_0

    .line 114
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 6
    .parameter "checked"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadId:J

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mMimeType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/ui/DownloadList;->onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mPosition:I

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 131
    return-void
.end method

.method public setData(JILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "downloadId"
    .parameter "position"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadId:J

    .line 74
    iput p3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mPosition:I

    .line 75
    iput-object p4, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mFileName:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mMimeType:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->isDownloadSelected(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public setDownloadListObj(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "downloadList"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 84
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    .line 136
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
