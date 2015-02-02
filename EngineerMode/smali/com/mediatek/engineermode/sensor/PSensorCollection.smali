.class public Lcom/mediatek/engineermode/sensor/PSensorCollection;
.super Landroid/app/Activity;
.source "PSensorCollection.java"


# static fields
.field private static final COUNT:I = 0x16

.field public static final TAG:Ljava/lang/String; = "PSensorCollectionLog"

.field private static final data:[F


# instance fields
.field private dis:[I

.field private mClearButton:Landroid/widget/Button;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentIndex:I

.field private mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

.field private mDataText:[Landroid/widget/TextView;

.field private mGetButton:Landroid/widget/Button;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mText:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x16

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->data:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x60t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x90t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xb0t 0x40t
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0xd0t 0x40t
        0x0t 0x0t 0xe0t 0x40t
        0x0t 0x0t 0xf0t 0x40t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x8t 0x41t
        0x0t 0x0t 0x10t 0x41t
        0x0t 0x0t 0x18t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x28t 0x41t
        0x0t 0x0t 0x30t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    .line 63
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    .line 64
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mText:[Landroid/widget/TextView;

    .line 65
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    .line 68
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    .line 71
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 72
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensor:Landroid/hardware/Sensor;

    .line 73
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorCollection$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/PSensorCollection$1;-><init>(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 117
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;-><init>(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/sensor/PSensorCollection;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->clearData()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/sensor/PSensorCollection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/sensor/PSensorCollection;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->getData()V

    return-void
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "PSensorCollectionLog"

    const-string v1, "Clear psensor data: "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    aget-object v0, v0, v1

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    .line 144
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->setDistance([I)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method private getData()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    .line 149
    const-string v0, "PSensorCollectionLog"

    const-string v1, "Get psensor data: "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    if-ne v0, v4, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    .line 155
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    iget v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorData()I

    move-result v2

    aput v2, v0, v1

    .line 156
    const-string v0, "PSensorCollectionLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    iget v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    iget v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    if-ne v0, v4, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->setDistance([I)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x16

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v3, 0x7f030080

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 89
    const v3, 0x7f0b041a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    iput-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    .line 90
    const v3, 0x7f0b0418

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    .line 91
    const v3, 0x7f0b0419

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;

    .line 92
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 98
    .local v2, tx_id:[I
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    .line 102
    .local v0, data_tx_id:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 103
    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mText:[Landroid/widget/TextView;

    aget v3, v2, v1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 104
    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    aget v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 108
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mediatek/engineermode/sensor/PSensorCollection;->data:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_2

    .line 112
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const-string v4, "    "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->setDistance([I)V

    .line 115
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 116
    return-void

    .line 95
    :array_0
    .array-data 0x4
        0xect 0x3t 0xbt 0x7ft
        0xedt 0x3t 0xbt 0x7ft
        0xeet 0x3t 0xbt 0x7ft
        0xeft 0x3t 0xbt 0x7ft
        0xf0t 0x3t 0xbt 0x7ft
        0xf1t 0x3t 0xbt 0x7ft
        0xf2t 0x3t 0xbt 0x7ft
        0xf3t 0x3t 0xbt 0x7ft
        0xf4t 0x3t 0xbt 0x7ft
        0xf5t 0x3t 0xbt 0x7ft
        0xf6t 0x3t 0xbt 0x7ft
        0x2t 0x4t 0xbt 0x7ft
        0x3t 0x4t 0xbt 0x7ft
        0x4t 0x4t 0xbt 0x7ft
        0x5t 0x4t 0xbt 0x7ft
        0x6t 0x4t 0xbt 0x7ft
        0x7t 0x4t 0xbt 0x7ft
        0x8t 0x4t 0xbt 0x7ft
        0x9t 0x4t 0xbt 0x7ft
        0xat 0x4t 0xbt 0x7ft
        0xbt 0x4t 0xbt 0x7ft
        0xct 0x4t 0xbt 0x7ft
    .end array-data

    .line 98
    :array_1
    .array-data 0x4
        0xf7t 0x3t 0xbt 0x7ft
        0xf8t 0x3t 0xbt 0x7ft
        0xf9t 0x3t 0xbt 0x7ft
        0xfat 0x3t 0xbt 0x7ft
        0xfbt 0x3t 0xbt 0x7ft
        0xfct 0x3t 0xbt 0x7ft
        0xfdt 0x3t 0xbt 0x7ft
        0xfet 0x3t 0xbt 0x7ft
        0xfft 0x3t 0xbt 0x7ft
        0x0t 0x4t 0xbt 0x7ft
        0x1t 0x4t 0xbt 0x7ft
        0xdt 0x4t 0xbt 0x7ft
        0xet 0x4t 0xbt 0x7ft
        0xft 0x4t 0xbt 0x7ft
        0x10t 0x4t 0xbt 0x7ft
        0x11t 0x4t 0xbt 0x7ft
        0x12t 0x4t 0xbt 0x7ft
        0x13t 0x4t 0xbt 0x7ft
        0x14t 0x4t 0xbt 0x7ft
        0x15t 0x4t 0xbt 0x7ft
        0x16t 0x4t 0xbt 0x7ft
        0x17t 0x4t 0xbt 0x7ft
    .end array-data
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensor:Landroid/hardware/Sensor;

    .line 177
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 178
    return-void
.end method
