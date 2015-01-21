.class public Lcom/android/browser/preferences/AccessibilityPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccessibilityPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

.field mControlWebView:Landroid/webkit/WebView;

.field mFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/browser/ext/Extensions;->getSmallFeaturePlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    .line 49
    iget-object v2, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    invoke-interface {v2}, Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;->shouldLoadCustomerAdvancedXml()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 55
    :goto_0
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 56
    .local v1, settings:Lcom/android/browser/BrowserSettings;
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    .line 58
    const-string v2, "min_font_size"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 59
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateMinFontSummary(Landroid/preference/Preference;I)V

    .line 61
    const-string v2, "font_family"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, p0}, Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;->updatePreferenceItemAndSetListener(Landroid/preference/Preference;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string v2, "text_zoom"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateTextZoomSummary(Landroid/preference/Preference;I)V

    .line 70
    const-string v2, "double_tap_zoom"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getDoubleTapZoom()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V

    .line 73
    const-string v2, "inverted_contrast"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateInvertedContrastSummary(Landroid/preference/Preference;I)V

    .line 76
    return-void

    .line 52
    .end local v0           #e:Landroid/preference/Preference;
    .end local v1           #settings:Lcom/android/browser/BrowserSettings;
    :cond_0
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 88
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "objValue"

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 145
    :goto_0
    return v1

    .line 122
    :cond_0
    const-string v1, "min_font_size"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 123
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->getAdjustedMinimumFontSize(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateMinFontSummary(Landroid/preference/Preference;I)V

    .line 126
    :cond_1
    const-string v1, "text_zoom"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .local v0, settings:Lcom/android/browser/BrowserSettings;
    move-object v1, p2

    .line 128
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->getAdjustedTextZoom(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateTextZoomSummary(Landroid/preference/Preference;I)V

    .line 131
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    :cond_2
    const-string v1, "double_tap_zoom"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .restart local v0       #settings:Lcom/android/browser/BrowserSettings;
    move-object v1, p2

    .line 133
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->getAdjustedDoubleTapZoom(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V

    .line 136
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    :cond_3
    const-string v1, "inverted_contrast"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    .line 137
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateInvertedContrastSummary(Landroid/preference/Preference;I)V

    .line 142
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/browser/ext/Extensions;->getSmallFeaturePlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    .line 143
    iget-object v1, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;->updatePreferenceItem(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 82
    return-void
.end method

.method updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V
    .locals 5
    .parameter "pref"
    .parameter "doubleTapZoom"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method updateInvertedContrastSummary(Landroid/preference/Preference;I)V
    .locals 5
    .parameter "pref"
    .parameter "contrast"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method updateMinFontSummary(Landroid/preference/Preference;I)V
    .locals 5
    .parameter "pref"
    .parameter "minFontSize"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, c:Landroid/content/Context;
    const v1, 0x7f0c010f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method updateTextZoomSummary(Landroid/preference/Preference;I)V
    .locals 5
    .parameter "pref"
    .parameter "textZoom"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
