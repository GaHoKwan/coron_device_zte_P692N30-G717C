.class public Lcom/zte/heartyservice/main/SecurityActivity;
.super Landroid/app/Activity;
.source "SecurityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/main/SecurityActivity$SecurityIdler;
    }
.end annotation


# static fields
.field private static final AD_RESOURCE:[I = null

.field private static final ALL_RESOURCE:[[I = null

.field private static final ANTI_EAVESDROP_RESOURCE:[I = null

.field private static final APP_LOCK_RESOURCE:[I = null

.field private static final CT_ITEM_RESOURCE:[[I = null

.field private static final FOREIGN_ITEM_RESOURCE:[[I = null

.field private static final INTERCEPT_RESOURCE:[I = null

.field private static final NO_FIND_BACK_RESOURCE:[[I = null

.field private static final PERMISSION_RESOURCE:[I = null

.field private static final PHONE_FIND_BACK_RESOURCE:[I = null

.field private static final PRIVACY_RESOURCE:[I = null

.field static final TAG:Ljava/lang/String; = "SecurityActivity"

.field private static final VIRUS_CHECK_RESOURCE:[I


# instance fields
.field private adIntercept:Landroid/view/View;

.field private adReminder:Landroid/view/View;

.field private antiEavesdrop:Landroid/view/View;

.field private interceptCallReminder:Landroid/view/View;

.field private interceptSmsReminder:Landroid/view/View;

.field private intercepted_phone_msg:I

.field private intercepted_phone_num:I

.field private mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

.field private mPrivacyName:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private permissionReminder:Landroid/view/View;

.field private phoneFindBack:Landroid/view/View;

.field private privacyCallReminder:Landroid/view/View;

.field private privacySmsReminder:Landroid/view/View;

.field private privacyZone:Landroid/view/View;

.field private privacy_calllog_num:I

.field private privacy_msg_num:I

.field private subDefaultProgress:Landroid/view/View;

.field private subHarassTntercept:Landroid/view/View;

.field private subVirusCheck:Landroid/view/View;

.field private virusReminder:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 302
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->INTERCEPT_RESOURCE:[I

    .line 307
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->PRIVACY_RESOURCE:[I

    .line 311
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->AD_RESOURCE:[I

    .line 314
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->ANTI_EAVESDROP_RESOURCE:[I

    .line 317
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->PERMISSION_RESOURCE:[I

    .line 321
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->PHONE_FIND_BACK_RESOURCE:[I

    .line 324
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->VIRUS_CHECK_RESOURCE:[I

    .line 327
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->APP_LOCK_RESOURCE:[I

    .line 330
    const/4 v0, 0x6

    new-array v0, v0, [[I

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->PRIVACY_RESOURCE:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->ANTI_EAVESDROP_RESOURCE:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->PERMISSION_RESOURCE:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->PHONE_FIND_BACK_RESOURCE:[I

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->VIRUS_CHECK_RESOURCE:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->APP_LOCK_RESOURCE:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->FOREIGN_ITEM_RESOURCE:[[I

    .line 334
    new-array v0, v3, [[I

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->INTERCEPT_RESOURCE:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->PRIVACY_RESOURCE:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->AD_RESOURCE:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->ANTI_EAVESDROP_RESOURCE:[I

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->PERMISSION_RESOURCE:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->PHONE_FIND_BACK_RESOURCE:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->APP_LOCK_RESOURCE:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->CT_ITEM_RESOURCE:[[I

    .line 338
    const/16 v0, 0x8

    new-array v0, v0, [[I

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->INTERCEPT_RESOURCE:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->PRIVACY_RESOURCE:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->AD_RESOURCE:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->ANTI_EAVESDROP_RESOURCE:[I

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->PERMISSION_RESOURCE:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->PHONE_FIND_BACK_RESOURCE:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->VIRUS_CHECK_RESOURCE:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->APP_LOCK_RESOURCE:[I

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->ALL_RESOURCE:[[I

    .line 343
    new-array v0, v3, [[I

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->INTERCEPT_RESOURCE:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->PRIVACY_RESOURCE:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->AD_RESOURCE:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/heartyservice/main/SecurityActivity;->ANTI_EAVESDROP_RESOURCE:[I

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->PERMISSION_RESOURCE:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->VIRUS_CHECK_RESOURCE:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/heartyservice/main/SecurityActivity;->APP_LOCK_RESOURCE:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->NO_FIND_BACK_RESOURCE:[[I

    return-void

    .line 302
    :array_0
    .array-data 0x4
        0x3dt 0x3t 0xet 0x7ft
        0x24t 0x0t 0xat 0x7ft
        0x2et 0x1t 0x2t 0x7ft
        0x3ft 0x3t 0xet 0x7ft
        0x27t 0x1t 0x2t 0x7ft
        0x40t 0x3t 0xet 0x7ft
        0x28t 0x1t 0x2t 0x7ft
    .end array-data

    .line 307
    :array_1
    .array-data 0x4
        0x41t 0x3t 0xet 0x7ft
        0xfbt 0x2t 0xat 0x7ft
        0x45t 0x1t 0x2t 0x7ft
        0x43t 0x3t 0xet 0x7ft
        0x27t 0x1t 0x2t 0x7ft
        0x44t 0x3t 0xet 0x7ft
        0x28t 0x1t 0x2t 0x7ft
    .end array-data

    .line 311
    :array_2
    .array-data 0x4
        0x45t 0x3t 0xet 0x7ft
        0x9t 0x5t 0xat 0x7ft
        0xcdt 0x0t 0x2t 0x7ft
        0x46t 0x3t 0xet 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 314
    :array_3
    .array-data 0x4
        0x47t 0x3t 0xet 0x7ft
        0xat 0x5t 0xat 0x7ft
        0x24t 0x1t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 317
    :array_4
    .array-data 0x4
        0x48t 0x3t 0xet 0x7ft
        0x25t 0x0t 0xat 0x7ft
        0x16t 0x1t 0x2t 0x7ft
        0x49t 0x3t 0xet 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 321
    :array_5
    .array-data 0x4
        0x4at 0x3t 0xet 0x7ft
        0x39t 0x0t 0xat 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 324
    :array_6
    .array-data 0x4
        0x4bt 0x3t 0xet 0x7ft
        0x1bt 0x0t 0xat 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0x4ct 0x3t 0xet 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 327
    :array_7
    .array-data 0x4
        0x76t 0x1t 0xet 0x7ft
        0xat 0x4t 0xat 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    .line 42
    iput v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    .line 43
    iput v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacy_msg_num:I

    .line 44
    iput v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacy_calllog_num:I

    .line 89
    new-instance v0, Lcom/zte/heartyservice/main/SecurityActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/SecurityActivity$1;-><init>(Lcom/zte/heartyservice/main/SecurityActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    return-void
.end method

.method private eventInit()V
    .locals 2

    .prologue
    .line 260
    const v1, 0x7f0e034b

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->subVirusCheck:Landroid/view/View;

    .line 261
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->subVirusCheck:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->subVirusCheck:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :cond_0
    const v1, 0x7f0e033d

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->subHarassTntercept:Landroid/view/View;

    .line 266
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->subHarassTntercept:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->subHarassTntercept:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_1
    const v1, 0x7f0e0348

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->subDefaultProgress:Landroid/view/View;

    .line 270
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->subDefaultProgress:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v1, 0x7f0e0341

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacyZone:Landroid/view/View;

    .line 273
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacyZone:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v1, 0x7f0e0342

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mPrivacyName:Landroid/widget/TextView;

    .line 276
    const v1, 0x7f0e034a

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->phoneFindBack:Landroid/view/View;

    .line 277
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->phoneFindBack:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->phoneFindBack:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_2
    const v1, 0x7f0e0345

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->adIntercept:Landroid/view/View;

    .line 282
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->adIntercept:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->adIntercept:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_3
    const v1, 0x7f0e0347

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->antiEavesdrop:Landroid/view/View;

    .line 286
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->antiEavesdrop:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v1, 0x7f0e0176

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, appLockView:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    :cond_4
    const v1, 0x7f0e034c

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->virusReminder:Landroid/view/View;

    .line 294
    const v1, 0x7f0e033f

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->interceptCallReminder:Landroid/view/View;

    .line 295
    const v1, 0x7f0e0340

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->interceptSmsReminder:Landroid/view/View;

    .line 296
    const v1, 0x7f0e0343

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacyCallReminder:Landroid/view/View;

    .line 297
    const v1, 0x7f0e0344

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacySmsReminder:Landroid/view/View;

    .line 298
    const v1, 0x7f0e0346

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->adReminder:Landroid/view/View;

    .line 299
    const v1, 0x7f0e0349

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity;->permissionReminder:Landroid/view/View;

    .line 300
    return-void
.end method

.method private resetId([[I)V
    .locals 12
    .parameter "resources"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 349
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 350
    aget-object v2, p1, v0

    .line 351
    .local v2, resource:[I
    if-eqz v2, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/SecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {p0}, Lcom/zte/heartyservice/main/SecurityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/main/SecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 355
    .local v4, view:Landroid/view/View;
    aget v5, v2, v9

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 356
    const v5, 0x7f0e00ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 358
    .local v3, textView:Landroid/widget/TextView;
    aget v5, v2, v9

    const v6, 0x7f0e0341

    if-ne v5, v6, :cond_0

    .line 359
    const v5, 0x7f0e0342

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 361
    :cond_0
    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 362
    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-virtual {v3, v9, v5, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 364
    aget v5, v2, v10

    if-eqz v5, :cond_1

    .line 365
    const v5, 0x7f0e00bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 367
    .local v1, notice:Landroid/widget/ImageView;
    aget v5, v2, v10

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 368
    const/4 v5, 0x4

    aget v5, v2, v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    aget v5, v2, v11

    if-eqz v5, :cond_1

    .line 370
    const v5, 0x7f0e00c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #notice:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 371
    .restart local v1       #notice:Landroid/widget/ImageView;
    aget v5, v2, v11

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 372
    const/4 v5, 0x6

    aget v5, v2, v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    .end local v1           #notice:Landroid/widget/ImageView;
    .end local v3           #textView:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 377
    .end local v2           #resource:[I
    :cond_2
    return-void
.end method

.method private setHarassIntercept()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->interceptCallReminder:Landroid/view/View;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 175
    :cond_0
    iget v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    if-lez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->interceptCallReminder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :goto_1
    iget v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    if-lez v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->interceptSmsReminder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->interceptCallReminder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->interceptSmsReminder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrivacy()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 189
    iget v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacy_calllog_num:I

    if-lez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacyCallReminder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :goto_0
    iget v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacy_msg_num:I

    if-lez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacySmsReminder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_1
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacyCallReminder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacySmsReminder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setSensitivePermission(Lcom/zte/heartyservice/common/datatype/PermissionScanResult;)V
    .locals 1
    .parameter "loaclPermissionScanResult"

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v0, p1, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->appnum:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private setVirusCheck(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->virusReminder:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 204
    if-gtz p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->virusReminder:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->virusReminder:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    const/16 v1, 0x8

    .line 82
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/SecurityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 385
    .local v2, viewId:I
    sparse-switch v2, :sswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 389
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.startActivity.VIRUS_SCANNER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 402
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.startActivity.HARASSMENT_INTERCEPT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    if-nez v3, :cond_0

    .line 415
    :goto_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 416
    :catch_1
    move-exception v0

    .line 417
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    if-eqz v3, :cond_1

    .line 407
    const-string v3, "target"

    const-string v4, "intercepted_phone"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 411
    :cond_1
    const-string v3, "target"

    const-string v4, "intercepted_msg"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 424
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 425
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.startActivity.PERMISSION_SCANNER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v3}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getPermissionCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 427
    const-string v3, "notification_extra"

    iget-object v4, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v4}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getNewAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    :cond_2
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 435
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.heartyservice.intent.action.clean_permission_notice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/main/SecurityActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 431
    :catch_2
    move-exception v0

    .line 432
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 439
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 440
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.startActivity.PRIVACY_LOGIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 447
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 448
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.startApk.RETRIEVE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->startActivity(Landroid/content/Intent;)V

    .line 451
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 452
    :catch_3
    move-exception v0

    .line 453
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "com.zte.retrieve"

    invoke-static {p0, v3}, Lcom/zte/heartyservice/common/utils/AppUtils;->bkupFbkNotInstallDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 460
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.startActivity.ad_intercept"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->startActivity(Landroid/content/Intent;)V

    .line 463
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.heartyservice.intent.action.clean_ad_notice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/main/SecurityActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 468
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 469
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.startActivity.ANTIEAVESDROP"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 476
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.zte.heartyservice.intent.action.startActivity.PRIVACY_LOGIN_APP_LOCK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 479
    :catch_4
    move-exception v0

    .line 480
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x7f0e0176 -> :sswitch_7
        0x7f0e033d -> :sswitch_1
        0x7f0e0341 -> :sswitch_3
        0x7f0e0345 -> :sswitch_5
        0x7f0e0347 -> :sswitch_6
        0x7f0e0348 -> :sswitch_2
        0x7f0e034a -> :sswitch_4
        0x7f0e034b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0300ec

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->setContentView(I)V

    .line 67
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->FOREIGN_ITEM_RESOURCE:[[I

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->resetId([[I)V

    .line 76
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SecurityActivity;->eventInit()V

    .line 77
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getInstance()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    .line 79
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->CT_ITEM_RESOURCE:[[I

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->resetId([[I)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->includePhoneFindBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->ALL_RESOURCE:[[I

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->resetId([[I)V

    goto :goto_0

    .line 74
    :cond_2
    sget-object v0, Lcom/zte/heartyservice/main/SecurityActivity;->NO_FIND_BACK_RESOURCE:[[I

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->resetId([[I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->stopMonitor()V

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, permissionIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.zte.heartyservice.intent.action.REFRESH_SECURITY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getEnterName()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, privacyName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mPrivacyName:Landroid/widget/TextView;

    const v3, 0x7f0a02fb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :goto_0
    invoke-virtual {p0, v4, v4}, Lcom/zte/heartyservice/main/SecurityActivity;->updateSafityIndicator(Landroid/content/Intent;Ljava/lang/String;)V

    .line 251
    return-void

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mPrivacyName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateSafityIndicator(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter "intent"
    .parameter "from"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 100
    if-nez p2, :cond_7

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, vCount:I
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v3}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getVirusCount()I

    move-result v2

    .line 105
    :cond_0
    invoke-direct {p0, v2}, Lcom/zte/heartyservice/main/SecurityActivity;->setVirusCheck(I)V

    .line 107
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getInterceptedPhoneAndMsgList()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, loaclInterceptResultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    iput v4, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    .line 109
    iput v4, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    .line 110
    if-eqz v1, :cond_2

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 112
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/InterceptResult;

    iget v3, v3, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    if-nez v3, :cond_1

    .line 113
    iget v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    .line 111
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    goto :goto_1

    .line 120
    .end local v0           #i:I
    :cond_2
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SecurityActivity;->setHarassIntercept()V

    .line 125
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getMsgNumInPrivacy()I

    move-result v3

    iput v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacy_msg_num:I

    .line 126
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCallLogNumInPrivacy()I

    move-result v3

    iput v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacy_calllog_num:I

    .line 127
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SecurityActivity;->setPrivacy()V

    .line 157
    .end local v1           #loaclInterceptResultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    .end local v2           #vCount:I
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->adReminder:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 158
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->adReminder:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_4
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->permissionReminder:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    if-eqz v3, :cond_6

    .line 162
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->adReminder:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v3}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getAdCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 163
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->adReminder:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_5
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v3}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getPermissionCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 166
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->permissionReminder:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_6
    return-void

    .line 128
    :cond_7
    const-string v3, "antivirus"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 129
    const/4 v2, 0x0

    .line 130
    .restart local v2       #vCount:I
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    if-eqz v3, :cond_8

    .line 131
    iget-object v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v3}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getVirusCount()I

    move-result v2

    .line 133
    :cond_8
    invoke-direct {p0, v2}, Lcom/zte/heartyservice/main/SecurityActivity;->setVirusCheck(I)V

    goto :goto_2

    .line 134
    .end local v2           #vCount:I
    :cond_9
    const-string v3, "intercept"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 135
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getInterceptedPhoneAndMsgList()Ljava/util/List;

    move-result-object v1

    .line 136
    .restart local v1       #loaclInterceptResultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    iput v4, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    .line 137
    iput v4, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    .line 138
    if-eqz v1, :cond_b

    .line 139
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/InterceptResult;

    iget v3, v3, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    if-nez v3, :cond_a

    .line 141
    iget v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_num:I

    .line 139
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 143
    :cond_a
    iget v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->intercepted_phone_msg:I

    goto :goto_4

    .line 147
    .end local v0           #i:I
    :cond_b
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SecurityActivity;->setHarassIntercept()V

    goto :goto_2

    .line 148
    .end local v1           #loaclInterceptResultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    :cond_c
    const-string v3, "permission"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 151
    const-string v3, "privacy"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getMsgNumInPrivacy()I

    move-result v3

    iput v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacy_msg_num:I

    .line 153
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCallLogNumInPrivacy()I

    move-result v3

    iput v3, p0, Lcom/zte/heartyservice/main/SecurityActivity;->privacy_calllog_num:I

    .line 154
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SecurityActivity;->setPrivacy()V

    goto/16 :goto_2
.end method
