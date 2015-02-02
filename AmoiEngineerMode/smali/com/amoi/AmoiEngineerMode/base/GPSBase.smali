.class public abstract Lcom/amoi/AmoiEngineerMode/base/GPSBase;
.super Landroid/app/Activity;
.source "GPSBase.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/location/GpsStatus$Listener;


# static fields
.field protected static final FORCE_QUIT_ENABLED_TIME:I = 0x3a98

.field protected static final MAX_SATELLITE_COUNT:I = 0x1e

.field protected static final MSG_FORCE_QUIT_ENABLED:I = 0x3

.field protected static final MSG_SUCCESS:I = 0x1

.field protected static final MSG_TIME_OUT:I = 0x2

.field protected static sEffectiveSatellitesCount:I

.field protected static sEffectiveSnr:I

.field protected static sSearchTime:I


# instance fields
.field gpsGood:Z

.field protected handler:Landroid/os/Handler;

.field protected listView:Landroid/widget/ListView;

.field protected locManager:Landroid/location/LocationManager;

.field private mClosingDialog:Landroid/app/ProgressDialog;

.field private mClosingGps:Z

.field protected mForceQuitEnabled:Z

.field private mGpsOpenedByThis:Z

.field private mOpeningDialog:Landroid/app/ProgressDialog;

.field protected mSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field protected numText:Ljava/lang/String;

.field protected originalGPSState:Z

.field protected prnStringArray:[Ljava/lang/String;

.field protected snrStringArray:[Ljava/lang/String;

.field protected snrText:Ljava/lang/String;

.field protected snrValueArray:[F

.field protected textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x1e

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->gpsGood:Z

    .line 57
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->numText:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrText:Ljava/lang/String;

    .line 62
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->prnStringArray:[Ljava/lang/String;

    .line 63
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrValueArray:[F

    .line 64
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrStringArray:[Ljava/lang/String;

    .line 278
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingGps:Z

    .line 280
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mGpsOpenedByThis:Z

    .line 373
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mForceQuitEnabled:Z

    .line 397
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/GPSBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method protected static dismissDialog(Landroid/app/Dialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 353
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 361
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EngineerMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPSBase Ignoring exception while dismissing dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected closeGps()V
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingGps:Z

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingGps:Z

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->setGPSEnabled(Z)V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->showClosingDialog()V

    .line 320
    return-void
.end method

.method protected dismissClosingDialog()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->dismissDialog(Landroid/app/Dialog;)V

    .line 348
    return-void
.end method

.method protected dismissOpeningDialog()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mOpeningDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->dismissDialog(Landroid/app/Dialog;)V

    .line 335
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mGpsOpenedByThis:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->closeGps()V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getGpsSetting()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->getEffectiveSnr(Landroid/content/ContentResolver;)I

    move-result v1

    sput v1, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->sEffectiveSnr:I

    .line 134
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->getEffectiveSatellitesCount(Landroid/content/ContentResolver;)I

    move-result v1

    sput v1, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->sEffectiveSatellitesCount:I

    .line 135
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->getSearchTime(Landroid/content/ContentResolver;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->sSearchTime:I

    .line 136
    return-void
.end method

.method protected getGpsState()Z
    .locals 5

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 157
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 159
    .local v0, open:Z
    const-string v2, "EngineerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPSBase getGpsState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v0
.end method

.method protected final gpsStatusChanged()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 211
    const-string v8, "EngineerMode"

    const-string v9, "GPSBase ..........gpsStatusChanged............"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mGpsOpenedByThis:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingGps:Z

    if-nez v8, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->dismissOpeningDialog()V

    .line 220
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->prnStringArray:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 221
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->prnStringArray:[Ljava/lang/String;

    aput-object v10, v8, v2

    .line 222
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrStringArray:[Ljava/lang/String;

    aput-object v10, v8, v2

    .line 223
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrValueArray:[F

    const/4 v9, 0x0

    aput v9, v8, v2

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->locManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v10}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    .line 227
    .local v1, gpsStatus:Landroid/location/GpsStatus;
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 229
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v3, 0x0

    .line 231
    .local v3, index:I
    const/4 v0, 0x0

    .line 232
    .local v0, effectiveCount:I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 233
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/GpsSatellite;

    .line 234
    .local v6, s:Landroid/location/GpsSatellite;
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->prnStringArray:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->numText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 235
    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    .line 236
    .local v7, snr:F
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrStringArray:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 237
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrValueArray:[F

    aput v7, v8, v3

    .line 240
    sget v8, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->sEffectiveSnr:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_5

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 242
    sget v8, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->sEffectiveSatellitesCount:I

    if-lt v0, v8, :cond_5

    .line 243
    iput-boolean v11, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->gpsGood:Z

    .line 253
    .end local v6           #s:Landroid/location/GpsSatellite;
    .end local v7           #snr:F
    :cond_3
    :goto_1
    iget-boolean v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->gpsGood:Z

    if-eqz v8, :cond_4

    .line 257
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    const-string v8, "EngineerMode"

    const-string v9, "GPSBase ....Gps test success........"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_4
    if-lez v3, :cond_6

    .line 263
    const-string v8, "EngineerMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GPSBase Satellite number:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->listView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 265
    new-instance v5, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;

    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->prnStringArray:[Ljava/lang/String;

    iget-object v9, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrStringArray:[Ljava/lang/String;

    invoke-direct {v5, p0, v8, v9}, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 267
    .local v5, mAdapter:Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    .end local v5           #mAdapter:Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;
    :goto_2
    return-void

    .line 248
    .restart local v6       #s:Landroid/location/GpsSatellite;
    .restart local v7       #snr:F
    :cond_5
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x1e

    if-lt v3, v8, :cond_2

    goto :goto_1

    .line 269
    .end local v6           #s:Landroid/location/GpsSatellite;
    .end local v7           #snr:F
    :cond_6
    const-string v8, "EngineerMode"

    const-string v9, "GPSBase no Statellite!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected abstract initButton()V
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/GPSBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->handler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->setContentView(I)V

    .line 82
    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->numText:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->snrText:Ljava/lang/String;

    .line 88
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->listView:Landroid/widget/ListView;

    .line 89
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->textView:Landroid/widget/TextView;

    .line 91
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->hideAutoButtons(Landroid/app/Activity;)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "EngineerMode"

    const-string v1, "GPSBase onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->initView()V

    .line 74
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->initButton()V

    .line 75
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->initHandler()V

    .line 76
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getGpsSetting()V

    .line 77
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->testGPS()V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "EngineerMode"

    const-string v1, "GPSBase onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->removeGPSListenerAndUpdates()V

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 180
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    :pswitch_0
    return-void

    .line 193
    :pswitch_1
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->dismissOpeningDialog()V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->gpsStatusChanged()V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 376
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 377
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mForceQuitEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->dismissOpeningDialog()V

    .line 381
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mGpsOpenedByThis:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->closeGps()V

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->dismissClosingDialog()V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mGpsOpenedByThis:Z

    .line 388
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->next(Landroid/app/Activity;)V

    .line 391
    :cond_1
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 275
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 283
    const-string v0, "EngineerMode"

    const-string v1, "GPSBase onProviderDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingGps:Z

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mGpsOpenedByThis:Z

    .line 287
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->openGps()V

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->dismissClosingDialog()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mGpsOpenedByThis:Z

    .line 293
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->finish()V

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 298
    const-string v0, "EngineerMode"

    const-string v1, "GPSBase onProviderEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 305
    return-void
.end method

.method protected openGps()V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->showOpeningDialog()V

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->setGPSEnabled(Z)V

    .line 311
    return-void
.end method

.method protected removeGPSListenerAndUpdates()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->locManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->locManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 185
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->locManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 187
    :cond_0
    return-void
.end method

.method protected setGPSEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 171
    const-string v1, "EngineerMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPSBase setGPSEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method protected abstract showButton()V
.end method

.method protected showClosingDialog()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 339
    const/4 v0, 0x0

    const v1, 0x7f0600ba

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingDialog:Landroid/app/ProgressDialog;

    .line 340
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mClosingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method protected showOpeningDialog()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mOpeningDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 326
    const/4 v0, 0x0

    const v1, 0x7f0600b9

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mOpeningDialog:Landroid/app/ProgressDialog;

    .line 327
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mOpeningDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mOpeningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mOpeningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method protected testGPS()V
    .locals 6

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getGpsState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->originalGPSState:Z

    .line 141
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->locManager:Landroid/location/LocationManager;

    .line 142
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->locManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 143
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->locManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 145
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    sget v2, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->sSearchTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    return-void
.end method
