.class public Lcom/android/mms/ui/SelectCardPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SelectCardPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/ui/AdvancedEditorPreference$GetSimInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectCardPreferenceActivity$NegativeButtonListener;,
        Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;
    }
.end annotation


# static fields
.field private static final MAX_EDITABLE_LENGTH:I = 0x14

.field public static final SUB_TITLE_NAME:Ljava/lang/String; = "sub_title_name"

.field private static final TAG:Ljava/lang/String; = "Mms/SelectCardPreferenceActivity"


# instance fields
.field private mCurrentSim:I

.field mIntentPreference:Ljava/lang/String;

.field private mListSimInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberText:Landroid/widget/EditText;

.field private mNumberTextDialog:Landroid/app/AlertDialog;

.field private mSimCount:I

.field private mSimPreferencesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/AdvancedEditorPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSpref:Landroid/content/SharedPreferences;

.field private mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

.field private mTitleId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mCurrentSim:I

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mTitleId:I

    .line 569
    new-instance v0, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectCardPreferenceActivity$3;-><init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSpref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SelectCardPreferenceActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mCurrentSim:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SelectCardPreferenceActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->updateSimState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private changeMultiCardKeyToSimRelated(Ljava/lang/String;)V
    .locals 11
    .parameter "preference"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, i:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    .line 180
    const-string v9, "pref_key_sim1"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/AdvancedEditorPreference;

    .line 181
    .local v4, sim1:Lcom/android/mms/ui/AdvancedEditorPreference;
    const-string v9, "pref_key_sim2"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/AdvancedEditorPreference;

    .line 182
    .local v5, sim2:Lcom/android/mms/ui/AdvancedEditorPreference;
    const-string v9, "pref_key_sim3"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/AdvancedEditorPreference;

    .line 183
    .local v6, sim3:Lcom/android/mms/ui/AdvancedEditorPreference;
    const-string v9, "pref_key_sim4"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/AdvancedEditorPreference;

    .line 185
    .local v7, sim4:Lcom/android/mms/ui/AdvancedEditorPreference;
    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/AdvancedEditorPreference;

    .line 192
    .local v3, sim:Lcom/android/mms/ui/AdvancedEditorPreference;
    if-eqz v3, :cond_0

    .line 193
    invoke-virtual {v3, p0, v0, p1}, Lcom/android/mms/ui/AdvancedEditorPreference;->init(Landroid/content/Context;ILjava/lang/String;)V

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v3           #sim:Lcom/android/mms/ui/AdvancedEditorPreference;
    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Z

    .line 200
    .local v2, isHasCardInthisSlot:[Z
    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 201
    .local v8, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v9

    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 202
    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v9

    const/4 v10, 0x1

    aput-boolean v10, v2, v9

    goto :goto_1

    .line 210
    .end local v8           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 211
    aget-boolean v9, v2, v0

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 212
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v9, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 216
    :cond_5
    return-void
.end method

.method private getSelectedPosition(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "inputmodeKey"
    .parameter "modes"

    .prologue
    .line 352
    const-string v1, ""

    .line 353
    .local v1, res:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSpref:Landroid/content/SharedPreferences;

    const-string v3, "Phone"

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    :goto_0
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSelectedPosition found the res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 360
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSelectedPosition found the position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v0           #i:I
    :goto_2
    return v0

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSpref:Landroid/content/SharedPreferences;

    const-string v3, "Device"

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 359
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_2
    const-string v2, "Mms/SelectCardPreferenceActivity"

    const-string v3, "getSelectedPosition not found the position"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getServiceCenter(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 504
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 506
    .local v1, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 509
    :goto_0
    return-object v2

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScAddressGemini is failed.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSaveLocation(JLcom/android/mms/ui/AdvancedEditorPreference;Landroid/content/Context;)V
    .locals 10
    .parameter "id"
    .parameter "mSim"
    .parameter "context"

    .prologue
    .line 299
    const-string v0, "Mms/SelectCardPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSlot is: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 302
    :cond_0
    const-string v0, "Mms/SelectCardPreferenceActivity"

    const-string v1, "startManageSimMessages mSimPreferencesList is null "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, saveLocation:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IStringReplacement;->getSaveLocationString()[Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, location:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v6, :cond_3

    long-to-int v0, p1

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    move-object v8, v6

    .line 328
    .end local v6           #location:[Ljava/lang/String;
    .local v8, saveLocationDisp:[Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    if-nez v8, :cond_5

    .line 329
    :cond_2
    const-string v0, "Mms/SelectCardPreferenceActivity"

    const-string v1, "setSaveLocation is null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v8           #saveLocationDisp:[Ljava/lang/String;
    .restart local v6       #location:[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #saveLocationDisp:[Ljava/lang/String;
    goto :goto_1

    .line 324
    .end local v3           #saveLocation:[Ljava/lang/String;
    .end local v6           #location:[Ljava/lang/String;
    .end local v8           #saveLocationDisp:[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3       #saveLocation:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #saveLocationDisp:[Ljava/lang/String;
    goto :goto_1

    .line 333
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pref_key_sms_save_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, saveLocationKey:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->getSelectedPosition(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 335
    .local v7, pos:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v4, Lcom/android/mms/ui/SelectCardPreferenceActivity$NegativeButtonListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/SelectCardPreferenceActivity$NegativeButtonListener;-><init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;Lcom/android/mms/ui/SelectCardPreferenceActivity$1;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v0, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SelectCardPreferenceActivity$2;-><init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/ui/AdvancedEditorPreference;Landroid/content/Context;)V

    invoke-virtual {v9, v8, v7, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private setServiceCenter(Ljava/lang/String;I)Z
    .locals 7
    .parameter "sCnumber"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v2

    .line 515
    .local v2, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    const-string v4, "Mms/SelectCardPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScAddressGemini is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->setScAddressGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 518
    const/4 v3, 0x1

    .line 524
    :goto_0
    return v3

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e1:Landroid/os/RemoteException;
    const-string v4, "Mms/SelectCardPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScAddressGemini is failed.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 523
    .local v1, e2:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SelectCardPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScAddressGemini is failed.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 566
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 567
    return-void
.end method

.method private startCellBroadcast(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 419
    :cond_0
    const-string v1, "Mms/SelectCardPreferenceActivity"

    const-string v2, "startCellBroadcast mSimPreferencesList is null "

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 426
    const v1, 0x7f0b0106

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->showToast(I)V

    goto :goto_0

    .line 429
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v0, it:Landroid/content/Intent;
    const-string v1, "Mms/SelectCardPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSlot is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "Mms/SelectCardPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSlot name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.CellBroadcastActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v1, "simId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string v1, "sub_title_name"

    invoke-static {p0, p1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private tostScFail()V
    .locals 2

    .prologue
    .line 533
    const v0, 0x7f0b0005

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 534
    return-void
.end method

.method private tostScOK()V
    .locals 2

    .prologue
    .line 529
    const v0, 0x7f0b0004

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 530
    return-void
.end method

.method private updateSimState(I)V
    .locals 4
    .parameter "slotId"

    .prologue
    .line 592
    const/4 v1, 0x0

    .line 594
    .local v1, pref:Lcom/android/mms/ui/AdvancedEditorPreference;
    iget-object v3, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/AdvancedEditorPreference;

    .line 595
    .local v2, simPreference:Lcom/android/mms/ui/AdvancedEditorPreference;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/ui/AdvancedEditorPreference;->getSlotId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 596
    move-object v1, v2

    goto :goto_0

    .line 600
    .end local v2           #simPreference:Lcom/android/mms/ui/AdvancedEditorPreference;
    :cond_1
    if-nez v1, :cond_2

    .line 604
    :goto_1
    return-void

    .line 603
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/ui/AdvancedEditorPreference;->notifyChanged()V

    goto :goto_1
.end method


# virtual methods
.method public getNumberFormat(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 471
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 472
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 473
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDispalyNumberFormat()I

    move-result v2

    .line 476
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSimColor(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 463
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v2

    .line 467
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getSimName(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 443
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 445
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 446
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 449
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public bridge synthetic getSimNumber(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->getSimNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 454
    .local v1, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 455
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 458
    .end local v1           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getSimStatus(I)I
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 480
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 483
    .local v1, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-eq p1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 485
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 491
    :cond_0
    :goto_0
    return v2

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Mms/SelectCardPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicatorStateGemini is failed.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public is3G(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 496
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->get3GCapabilitySIM()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 499
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mms/ext/IStringReplacement;

    iput-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSpref:Landroid/content/SharedPreferences;

    .line 143
    const v2, 0x7f050009

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "preference"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    .line 146
    const-string v2, "preferenceTitleId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mTitleId:I

    .line 147
    iget v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mTitleId:I

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, ctString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v2}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mTitleId:I

    const v3, 0x7f0b02a7

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    .end local v0           #ctString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0       #ctString:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mTitleId:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 226
    move-object v10, p2

    check-cast v10, Lcom/android/mms/ui/AdvancedEditorPreference;

    invoke-virtual {v10}, Lcom/android/mms/ui/AdvancedEditorPreference;->getSlotId()I

    move-result v3

    .line 229
    .local v3, currentSlotId:I
    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v11, "pref_key_manage_sim_messages"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 231
    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, ctString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v10}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->startManageSimMessages(I)V

    .line 295
    .end local v1           #ctString:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v10

    return v10

    .line 235
    .restart local v1       #ctString:Ljava/lang/String;
    :cond_1
    const v10, 0x7f0b02a7

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 240
    .end local v1           #ctString:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v11, "pref_key_cell_broadcast"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 241
    invoke-direct {p0, v3}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->startCellBroadcast(I)V

    goto :goto_1

    .line 242
    :cond_3
    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v11, "pref_key_sms_service_center"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 244
    iput v3, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mCurrentSim:I

    .line 245
    iget v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mCurrentSim:I

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->setServiceCenter(I)V

    goto :goto_1

    .line 246
    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v11, "pref_key_sms_save_location"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 247
    int-to-long v11, v3

    move-object v10, p2

    check-cast v10, Lcom/android/mms/ui/AdvancedEditorPreference;

    invoke-direct {p0, v11, v12, v10, p0}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->setSaveLocation(JLcom/android/mms/ui/AdvancedEditorPreference;Landroid/content/Context;)V

    goto :goto_1

    .line 248
    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    const-string v11, "pref_key_sms_validity_period"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 251
    move v7, v3

    .line 252
    .local v7, slotId:I
    const/4 v10, 0x6

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    .line 260
    .local v6, peroids:[I
    const/4 v10, 0x6

    new-array v5, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b000f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0010

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0011

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v5, v10

    .line 269
    .local v5, items:[Ljava/lang/CharSequence;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v11, v7

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "pref_key_sms_validity_period"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, validityKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSpref:Landroid/content/SharedPreferences;

    const/4 v11, -0x1

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 271
    .local v8, vailidity:I
    const/4 v2, 0x0

    .line 272
    .local v2, currentPosition:I
    const-string v10, "Mms/SelectCardPreferenceActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "validity found the res = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v10, v6

    if-ge v4, v10, :cond_6

    .line 274
    aget v10, v6, v4

    if-ne v8, v10, :cond_7

    .line 275
    const-string v10, "Mms/SelectCardPreferenceActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "validity found the position = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    move v2, v4

    .line 281
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    new-instance v10, Lcom/android/mms/ui/SelectCardPreferenceActivity$1;

    invoke-direct {v10, p0, v9, v6}, Lcom/android/mms/ui/SelectCardPreferenceActivity$1;-><init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;Ljava/lang/String;[I)V

    invoke-virtual {v0, v5, v2, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 273
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 252
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xbt 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 163
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimCount:I

    .line 164
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mIntentPreference:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->changeMultiCardKeyToSimRelated(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AdvancedEditorPreference;

    .line 167
    .local v1, sim:Lcom/android/mms/ui/AdvancedEditorPreference;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/AdvancedEditorPreference;->setNotifyChange(Landroid/content/Context;)V

    goto :goto_0

    .line 172
    .end local v1           #sim:Lcom/android/mms/ui/AdvancedEditorPreference;
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 608
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 609
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 611
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 615
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 616
    iget-object v0, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 617
    return-void
.end method

.method public setServiceCenter(I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 372
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const v2, 0x7f0b0106

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->showToast(I)V

    .line 399
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-static {p1}, Lcom/mediatek/encapsulation/android/telephony/gemini/EncapsulatedGeminiSmsManager;->isSmsReady(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    const v2, 0x7f0b01f5

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->showToast(I)V

    goto :goto_0

    .line 379
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    .line 381
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    const v3, 0x7f0b0268

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 382
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 386
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 387
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->computeScroll()V

    .line 388
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSlot is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->getServiceCenter(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, scNumber:Ljava/lang/String;
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScNumber is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const v2, 0x7f02009f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0006

    new-instance v4, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;

    invoke-direct {v4, p0, v7}, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;-><init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;Lcom/android/mms/ui/SelectCardPreferenceActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0007

    new-instance v4, Lcom/android/mms/ui/SelectCardPreferenceActivity$NegativeButtonListener;

    invoke-direct {v4, p0, v7}, Lcom/android/mms/ui/SelectCardPreferenceActivity$NegativeButtonListener;-><init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;Lcom/android/mms/ui/SelectCardPreferenceActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public startManageSimMessages(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mSimPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 404
    :cond_0
    const-string v1, "Mms/SelectCardPreferenceActivity"

    const-string v2, "startManageSimMessages mSimPreferencesList is null "

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v0, it:Landroid/content/Intent;
    const-string v1, "Mms/SelectCardPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSlot is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSlot name is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity;->mListSimInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 412
    const-string v1, "SlotId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
