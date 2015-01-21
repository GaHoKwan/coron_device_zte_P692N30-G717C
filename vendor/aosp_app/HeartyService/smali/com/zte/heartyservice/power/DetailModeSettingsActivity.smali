.class public Lcom/zte/heartyservice/power/DetailModeSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "DetailModeSettingsActivity.java"


# static fields
.field private static final CUSTOM_RESULT_ADD:I = 0x2

.field private static final CUSTOM_RESULT_DELETE:I = 0x1

.field private static final MENU_CANCEL:I = 0x2

.field private static final MENU_DELETE:I = 0x3

.field private static final MENU_SAVE:I = 0x1

.field private static final NEW_MODE:I = 0x0

.field private static final OPENE_EXISTMODE_DEFAULT:I = 0x1

.field private static final OPENE_EXISTMODE_DEFAULT_MY:I = 0x2

.field private static final OPEN_EXISTMODE_CUSTOM:I = 0x3

.field private static final tag:Ljava/lang/String; = "DetailModeSettingsActivity"


# instance fields
.field private MODE_BASE_URI:Landroid/net/Uri;

.field private baseMode:[I

.field public baseNet:Landroid/preference/CheckBoxPreference;

.field public bluetooth:Landroid/preference/CheckBoxPreference;

.field public brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

.field public brightnessAutomatic:Z

.field public brightnessValue:I

.field private currentId:Ljava/lang/String;

.field public feedback:Landroid/preference/CheckBoxPreference;

.field public gps:Landroid/preference/CheckBoxPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field public modeName:Landroid/preference/EditTextPreference;

.field public modeNameValue:Ljava/lang/String;

.field public netData:Landroid/preference/CheckBoxPreference;

.field public oldBrightnessAutomatic:Z

.field public oldBrightnessValue:I

.field public openType:I

.field public position:I

.field public rotate:Landroid/preference/CheckBoxPreference;

.field public sync:Landroid/preference/CheckBoxPreference;

.field public timeout:Landroid/preference/ListPreference;

.field public timeoutValue:Ljava/lang/String;

.field public wifi:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    sget-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->MODE_BASE_URI:Landroid/net/Uri;

    .line 47
    const/4 v0, -0x3

    iput v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->position:I

    .line 80
    iput-boolean v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    .line 82
    iput-boolean v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->oldBrightnessAutomatic:Z

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseMode:[I

    .line 86
    new-instance v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$1;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void

    .line 84
    nop

    :array_0
    .array-data 0x4
        0x11t 0x5t 0xat 0x7ft
        0x12t 0x5t 0xat 0x7ft
        0x13t 0x5t 0xat 0x7ft
        0x14t 0x5t 0xat 0x7ft
    .end array-data
.end method

.method private AddMode()V
    .locals 5

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->WriteToDataBase()Landroid/content/ContentValues;

    .line 649
    iget-object v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 657
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->WriteToDataBase()Landroid/content/ContentValues;

    move-result-object v2

    .line 658
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->MODE_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 661
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 662
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "add_mode_name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 664
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->finish()V

    .line 665
    return-void
.end method

.method private Back()V
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->setResult(I)V

    .line 629
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->finish()V

    .line 630
    return-void
.end method

.method private DeleteMode()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 634
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->MODE_BASE_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->currentId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 635
    const-string v1, "DetailModeSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; currentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->currentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 638
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "delete_position"

    iget v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, v7, v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 640
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->finish()V

    .line 641
    return-void
.end method

.method private InitialExistMode()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 690
    const-string v0, "DetailModeSettingsActivity"

    const-string v1, "InitialExistMode Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v6, 0x0

    .line 692
    .local v6, cr:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->MODE_BASE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 693
    iget v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->position:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 694
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->currentId:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseMode:[I

    iget v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->position:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 697
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->InitialItems(Landroid/database/Cursor;)V

    .line 698
    return-void
.end method

.method private InitialItems(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cr"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 725
    const-string v1, "DetailModeSettingsActivity"

    const-string v4, "Initial Items Enter"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 728
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseNet:Landroid/preference/CheckBoxPreference;

    const-string v1, "base_net"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 731
    const-string v1, "net_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 732
    .local v0, nd:I
    const-string v1, "dm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liuji debug InitialItems nd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    if-le v0, v2, :cond_2

    .line 734
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mobile_data"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 739
    :goto_2
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->wifi:Landroid/preference/CheckBoxPreference;

    const-string v1, "wifi"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 740
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->gps:Landroid/preference/CheckBoxPreference;

    const-string v1, "gps"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 742
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeout:Landroid/preference/ListPreference;

    const-string v4, "timeout"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 743
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->feedback:Landroid/preference/CheckBoxPreference;

    const-string v1, "feedback"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 744
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->bluetooth:Landroid/preference/CheckBoxPreference;

    const-string v1, "bluetooth"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 745
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    const-string v1, "sync"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 746
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->rotate:Landroid/preference/CheckBoxPreference;

    const-string v1, "rotate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_9

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 752
    const-string v1, "brightness_auto"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_a

    :goto_9
    iput-boolean v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    .line 753
    const-string v1, "brightness"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    .line 754
    iget-boolean v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    iput-boolean v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->oldBrightnessAutomatic:Z

    .line 755
    iget v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    iput v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->oldBrightnessValue:I

    .line 761
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    iget v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/power/BrightnessPreference;->setBrightnessValue(I)V

    .line 762
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    iget-boolean v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/power/BrightnessPreference;->setAutomaticChecked(Z)V

    .line 764
    const-string v1, "DetailModeSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitialItems:Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mode_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; BrightnessAutomatic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; brightnessValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 766
    return-void

    .end local v0           #nd:I
    :cond_0
    move v1, v3

    .line 728
    goto/16 :goto_0

    .restart local v0       #nd:I
    :cond_1
    move v1, v3

    .line 734
    goto/16 :goto_1

    .line 736
    :cond_2
    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_3
    move v1, v3

    goto :goto_a

    :cond_4
    move v1, v3

    .line 739
    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 740
    goto/16 :goto_4

    :cond_6
    move v1, v3

    .line 743
    goto/16 :goto_5

    :cond_7
    move v1, v3

    .line 744
    goto/16 :goto_6

    :cond_8
    move v1, v3

    .line 745
    goto/16 :goto_7

    :cond_9
    move v1, v3

    .line 746
    goto/16 :goto_8

    :cond_a
    move v2, v3

    .line 752
    goto/16 :goto_9
.end method

.method private InitialNewMode()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 704
    const-string v0, "DetailModeSettingsActivity"

    const-string v1, "Initial NewMode Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v6, 0x0

    .line 708
    .local v6, cr:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->MODE_BASE_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "4"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 710
    const-string v0, "DetailModeSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialNewMode cr num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; cr index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 713
    const-string v0, "DetailModeSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after move position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    const v1, 0x7f0a01bb

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 718
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->InitialItems(Landroid/database/Cursor;)V

    .line 720
    return-void
.end method

.method private SaveMode()V
    .locals 9

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->WriteToDataBase()Landroid/content/ContentValues;

    move-result-object v2

    .line 614
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->MODE_BASE_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->currentId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "position"

    iget v4, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->position:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 619
    new-instance v1, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 620
    .local v1, localSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-virtual {v1}, Lcom/zte/heartyservice/power/SwitchTools;->executeWhenMyModeSetChange()V

    .line 621
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->finish()V

    .line 622
    return-void
.end method

.method private SetAllDisabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 772
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseNet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 773
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 774
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->wifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 775
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference;->setEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 778
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->feedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 779
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->bluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 780
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 781
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->rotate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 782
    return-void
.end method

.method private SetNameDisabled()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 790
    return-void
.end method

.method private UpdateAll()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBaseNet()V

    .line 506
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateNetData()V

    .line 507
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateWifi()V

    .line 508
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateGPS()V

    .line 509
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateTimeout()V

    .line 510
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateFeedBack()V

    .line 511
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBluetooth()V

    .line 512
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateSync()V

    .line 513
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBrightness()V

    .line 514
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateRotate()V

    .line 515
    return-void
.end method

.method private WriteToDataBase()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 670
    const-string v1, "DetailModeSettingsActivity"

    const-string v2, "write to database"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 672
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "mode_name"

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v1, "base_net"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseNet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 674
    const-string v1, "net_data"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 675
    const-string v1, "wifi"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->wifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 676
    const-string v1, "gps"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 677
    const-string v1, "brightness_auto"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    invoke-virtual {v2}, Lcom/zte/heartyservice/power/BrightnessPreference;->isAutomaticChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 678
    const-string v1, "brightness"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    invoke-virtual {v2}, Lcom/zte/heartyservice/power/BrightnessPreference;->getBrightnessValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    const-string v1, "timeout"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeout:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v1, "feedback"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->feedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 681
    const-string v1, "bluetooth"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->bluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 682
    const-string v1, "sync"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 683
    const-string v1, "rotate"

    iget-object v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->rotate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 684
    return-object v0
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->Back()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->SaveMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBrightness()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBaseNet()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateNetData()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateSync()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateWifi()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateGPS()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateFeedBack()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBluetooth()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateRotate()V

    return-void
.end method

.method private updateBaseNet()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseNet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseNet:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0160

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseNet:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0161

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateBluetooth()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->bluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->bluetooth:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a016a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->bluetooth:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a016b

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateBrightness()V
    .locals 6

    .prologue
    .line 487
    const-string v0, "DetailModeSettingsActivity"

    const-string v1, "updateBrightness Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-boolean v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    if-eqz v0, :cond_0

    .line 489
    const-string v0, "DetailModeSettingsActivity"

    const-string v1, "auto brightness summary"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    const v1, 0x7f0a0170

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference;->setSummary(I)V

    .line 499
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v0, "DetailModeSettingsActivity"

    const-string v1, "value brightness summary"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    const v1, 0x7f0a0172

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference;->setSummary(I)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0171

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    add-int/lit8 v5, v5, -0x14

    mul-int/lit8 v5, v5, 0x64

    div-int/lit16 v5, v5, 0xeb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateFeedBack()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->feedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->feedback:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0168

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->feedback:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0169

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateGPS()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->gps:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->gps:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0167

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateNetData()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0162

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateRotate()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->rotate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->rotate:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a016e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->rotate:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a016f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateSync()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a016d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateWifi()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->wifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->wifi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0164

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->wifi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0165

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public InitialListener()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$2;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseNet:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$3;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$4;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->wifi:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$5;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->gps:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$6;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->feedback:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$7;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->bluetooth:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$8;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$9;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$9;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeout:Landroid/preference/ListPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$10;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$10;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->rotate:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$11;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$11;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    new-instance v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;-><init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/BrightnessPreference;->setOnBrightnessChangedListener(Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;)V

    .line 363
    return-void
.end method

.method public getTimeoutEnteryValue()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0a01b8

    const v3, 0x7f0a01b7

    .line 523
    const-string v0, "get failed"

    .line 524
    .local v0, entryValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeoutValue:Ljava/lang/String;

    const-string v2, "15000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeoutValue:Ljava/lang/String;

    const-string v2, "30000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "30"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeoutValue:Ljava/lang/String;

    const-string v2, "60000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_3
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeoutValue:Ljava/lang/String;

    const-string v2, "120000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 532
    :cond_4
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeoutValue:Ljava/lang/String;

    const-string v2, "300000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 534
    :cond_5
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeoutValue:Ljava/lang/String;

    const-string v2, "600000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 536
    :cond_6
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeoutValue:Ljava/lang/String;

    const-string v2, "1800000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "30"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 110
    .local v5, list:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 126
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "open_type"

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    .line 128
    iget v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 129
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 130
    .local v4, layoutParams:Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 131
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 132
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, customView:Landroid/view/View;
    const v6, 0x7f0e000b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v6, 0x7f0e000c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v0, v1, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 143
    .end local v1           #customView:Landroid/view/View;
    .end local v2           #dialogInflater:Landroid/view/LayoutInflater;
    .end local v4           #layoutParams:Landroid/app/ActionBar$LayoutParams;
    :goto_0
    const v6, 0x7f030080

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->addPreferencesFromResource(I)V

    .line 147
    const-string v6, "mode_name"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/EditTextPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    .line 148
    const-string v6, "base_net"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->baseNet:Landroid/preference/CheckBoxPreference;

    .line 149
    const-string v6, "netdata"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->netData:Landroid/preference/CheckBoxPreference;

    .line 150
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->wifi:Landroid/preference/CheckBoxPreference;

    .line 151
    const-string v6, "gps"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->gps:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v6, "brightness"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/power/BrightnessPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    .line 153
    const-string v6, "timeout"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeout:Landroid/preference/ListPreference;

    .line 154
    const-string v6, "feedback"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->feedback:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v6, "bluetooth"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->bluetooth:Landroid/preference/CheckBoxPreference;

    .line 156
    const-string v6, "autosync"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->sync:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v6, "rotate"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->rotate:Landroid/preference/CheckBoxPreference;

    .line 161
    return-void

    .line 138
    :cond_1
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 139
    const v6, 0x7f0a0011

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0a0174

    const v5, 0x7f0a0173

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 547
    iget v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    packed-switch v0, :pswitch_data_0

    .line 567
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 549
    :pswitch_1
    const-string v0, "DetailModeSettingsActivity"

    const-string v1, "bp1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 551
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 554
    :pswitch_2
    const-string v0, "DetailModeSettingsActivity"

    const-string v1, "bp2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :pswitch_3
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 562
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 563
    const/4 v0, 0x3

    const v1, 0x7f0a0176

    invoke-interface {p1, v4, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 579
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 601
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 583
    :pswitch_0
    iget v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 584
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->SaveMode()V

    goto :goto_0

    .line 585
    :cond_2
    iget v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    if-nez v0, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->AddMode()V

    goto :goto_0

    .line 592
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->Back()V

    goto :goto_0

    .line 596
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->DeleteMode()V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightness:Lcom/zte/heartyservice/power/BrightnessPreference;

    if-ne p2, v0, :cond_0

    .line 384
    const-string v0, "DetailModeSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Brightness Preference Clicked: brightnessValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; brightnessAutomatic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "DetailModeSettingsActivity"

    const-string v1, "onResume Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 167
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 171
    const-string v1, "DetailModeSettingsActivity"

    const-string v2, "onStart Enter!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 174
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "open_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    .line 176
    const-string v1, "position"

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->position:I

    .line 177
    const-string v1, "DetailModeSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opentype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    iget v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    if-nez v1, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->InitialNewMode()V

    .line 195
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeout:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeoutValue:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->UpdateAll()V

    .line 205
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->InitialListener()V

    .line 210
    return-void

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->InitialExistMode()V

    .line 188
    iget v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->SetAllDisabled()V

    goto :goto_0

    .line 190
    :cond_2
    iget v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->openType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->SetNameDisabled()V

    goto :goto_0
.end method

.method public updateModeName()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeNameValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    const v1, 0x7f0a0512

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->modeNameValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateTimeout()V
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getTimeoutEnteryValue()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, entryValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->timeout:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method
