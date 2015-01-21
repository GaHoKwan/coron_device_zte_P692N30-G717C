.class public Lcom/android/quicksearchbox/preferences/SearchEngineItemPreference;
.super Lcom/android/quicksearchbox/preferences/RadioPreference;
.source "SearchEngineItemPreference.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/preferences/RadioPreference;-><init>(Landroid/content/Context;)V

    .line 32
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 33
    return-void
.end method
