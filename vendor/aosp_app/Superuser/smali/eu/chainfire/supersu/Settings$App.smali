.class public Leu/chainfire/supersu/Settings$App;
.super Leu/chainfire/supersu/Settings$Default;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "App"
.end annotation


# instance fields
.field public Ą:I

.field public ą:Ljava/lang/String;

.field public Ć:I

.field public ć:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field ċ:Landroid/graphics/drawable/Drawable;

.field public ȃ:J

.field Ȋ:Ljava/lang/String;

.field public ˮ͈:Ljava/lang/String;

.field public ˮ͍:Ljava/lang/String;

.field public 岱:I

.field public 櫯:Z

.field final synthetic 纫:Leu/chainfire/supersu/Settings;

.field 鷭:Z


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/Settings;)V
    .locals 2

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-direct {p0, p1}, Leu/chainfire/supersu/Settings$Default;-><init>(Leu/chainfire/supersu/Settings;)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->鷭:Z

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->櫯:Z

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->Ą:I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->Ć:I

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->岱:I

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ċ:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/Settings$App;)Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->鷭:Z

    return v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/Settings$App;)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final ȃ()V
    .locals 5

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->鷭:Z

    .line 364
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    const-string v1, "config_%s_notify"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 366
    const-string v1, "config_%s_log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    const-string v1, "config_%s_wait"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 369
    const-string v1, "config_%s_access"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    const-string v1, "config_%s_expire"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    const-string v1, "config_%s_expireselect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    const-string v1, "config_%s_forceshell"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    const-string v1, "config_%s_forceuser"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    const-string v1, "config_%s_forcegroups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    const-string v1, "config_%s_pin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->ˮ͈(Leu/chainfire/supersu/Settings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method public final ˮ͈()V
    .locals 2

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->鷭:Z

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 336
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/Settings$App;->鷭(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 337
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    return-void
.end method

.method public final 櫯()V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/Settings$App;->鷭(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public final 鷭()V
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->櫯(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-static {v0, v1}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->櫯(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 253
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->櫯(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-static {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->櫯(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ċ:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 256
    :catch_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ċ:Landroid/graphics/drawable/Drawable;

    .line 260
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    .line 263
    :cond_2
    return-void
.end method

.method public final 鷭(Landroid/content/Context;II)V
    .locals 7

    .line 0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    .line 394
    const-string v5, ""

    .line 395
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 396
    const/4 v6, 0x0

    goto :goto_0

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 398
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 396
    :cond_1
    add-int/lit8 v6, v6, 0x1

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 402
    :cond_2
    iget v6, p0, Leu/chainfire/supersu/Settings$App;->躆:I

    .line 403
    const/4 v0, -0x1

    if-ne v6, v0, :cond_3

    .line 404
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    iget-object v0, v0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v6, v0, Leu/chainfire/supersu/Settings$Default;->躆:I

    .line 405
    const/4 v0, 0x2

    if-ne v6, v0, :cond_3

    .line 406
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-static {p1, v0}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    const/4 v6, 0x1

    .line 412
    :cond_3
    const-string v0, "%d:%d:%s:%s:%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 413
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 414
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 415
    iget v2, p0, Leu/chainfire/supersu/Settings$App;->Ć:I

    if-ltz v2, :cond_4

    .line 416
    iget v2, p0, Leu/chainfire/supersu/Settings$App;->Ć:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 417
    :cond_4
    const-string v2, ""

    :goto_1
    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 419
    const/4 v2, 0x3

    aput-object v5, v1, v2

    .line 420
    iget-object v2, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 421
    iget-object v2, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    goto :goto_2

    .line 422
    :cond_5
    const-string v2, ""

    :goto_2
    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 412
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 426
    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 427
    const-string v1, "mkdir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 428
    const-string v1, "chmod 600 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 429
    const-string v1, "echo \'%s\' > %s%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 430
    const-string v1, "chmod 600 %s%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 426
    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->櫯([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 432
    return-void
.end method

.method protected final 鷭(Ljava/lang/String;)V
    .locals 8

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->鷭:Z

    if-eqz v0, :cond_0

    return-void

    .line 282
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->䒧:I

    .line 283
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->躆:I

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->ܕ:I

    .line 286
    invoke-super {p0, p1}, Leu/chainfire/supersu/Settings$Default;->鷭(Ljava/lang/String;)V

    .line 289
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->櫯(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 290
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->岱:I

    .line 291
    iget v0, p0, Leu/chainfire/supersu/Settings$App;->岱:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->岱:I

    .line 293
    goto :goto_0

    .line 294
    :cond_1
    iget v0, p0, Leu/chainfire/supersu/Settings$App;->岱:I

    rem-int/lit16 v0, v0, 0x2710

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->岱:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 297
    :catch_0
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->岱:I

    .line 300
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_expire"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 302
    iget-wide v0, p0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 304
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    iget-object v0, v0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v0, v0, Leu/chainfire/supersu/Settings$Default;->庸:I

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 306
    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_expireselect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Leu/chainfire/supersu/Settings$App;->Ą:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->Ą:I

    .line 308
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_forceshell"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    .line 311
    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_forceuser"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->Ć:I

    .line 313
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_forcegroups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    if-eqz v4, :cond_4

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    .line 316
    :cond_4
    if-eqz v4, :cond_7

    .line 317
    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 318
    array-length v6, v7

    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    aget-object v4, v7, v5

    .line 319
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 321
    :try_start_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    nop

    .line 318
    :catch_1
    :cond_6
    add-int/lit8 v5, v5, 0x1

    :goto_1
    if-lt v5, v6, :cond_5

    .line 328
    :cond_7
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->纫:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_pin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    .line 330
    :cond_8
    return-void
.end method

.method protected final 鷭(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 5

    .line 0
    invoke-super {p0, p1, p2}, Leu/chainfire/supersu/Settings$Default;->鷭(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 343
    const-string v0, "config_%s_expire"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 344
    const-string v0, "config_%s_expireselect"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Leu/chainfire/supersu/Settings$App;->Ą:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 345
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 346
    const-string v0, "config_%s_forceshell"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    goto :goto_0

    .line 348
    :cond_0
    const-string v0, "config_%s_forceshell"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    :goto_0
    const-string v0, "config_%s_forceuser"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Leu/chainfire/supersu/Settings$App;->Ć:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    const-string v3, ""

    .line 352
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 353
    const/4 v4, 0x0

    goto :goto_1

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_1

    .line 358
    :cond_3
    const-string v0, "config_%s_forcegroups"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    const-string v0, "config_%s_pin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 360
    return-void
.end method
