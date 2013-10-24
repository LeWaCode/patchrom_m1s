.class public Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothBppPrintPrefActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static mBPPstop:Z

.field static mContext:Landroid/content/Context;

.field static mCopies:Ljava/lang/String;

.field static mNumUp:Ljava/lang/String;

.field public static mOPPstop:Z

.field static mOrient:Ljava/lang/String;

.field static mSides:Ljava/lang/String;


# instance fields
.field bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

.field private mListCopies:Landroid/preference/EditTextPreference;

.field private mListNumberUp:Landroid/preference/ListPreference;

.field private mListOrient:Landroid/preference/ListPreference;

.field private mListSides:Landroid/preference/ListPreference;

.field private mPrintStart:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const-string v0, "1"

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mCopies:Ljava/lang/String;

    .line 81
    const-string v0, "1"

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mNumUp:Ljava/lang/String;

    .line 83
    const-string v0, "portrait"

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOrient:Ljava/lang/String;

    .line 85
    const-string v0, "one-sided"

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mSides:Ljava/lang/String;

    .line 87
    sput-boolean v1, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOPPstop:Z

    .line 89
    sput-boolean v1, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mBPPstop:Z

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sput-boolean v5, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOPPstop:Z

    .line 99
    sput-boolean v5, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mBPPstop:Z

    .line 100
    sput-object p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    .line 103
    sget v2, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    add-int/lit8 v0, v2, -0x1

    .line 104
    .local v0, id:I
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    .line 106
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->addPreferencesFromResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 109
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "text_copies"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListCopies:Landroid/preference/EditTextPreference;

    .line 110
    const-string v2, "list_numberup"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListNumberUp:Landroid/preference/ListPreference;

    .line 111
    const-string v2, "list_orient"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListOrient:Landroid/preference/ListPreference;

    .line 112
    const-string v2, "list_sides"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListSides:Landroid/preference/ListPreference;

    .line 113
    const-string v2, "print"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mPrintStart:Landroid/preference/PreferenceScreen;

    .line 115
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListCopies:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListNumberUp:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListOrient:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListSides:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mPrintStart:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 123
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    iget v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_MaxCopies:I

    if-le v2, v5, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListCopies:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 125
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListCopies:Landroid/preference/EditTextPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mCopies:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Click to change"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    iget v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_NumberUp:I

    if-le v2, v5, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListNumberUp:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListNumberUp:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mNumUp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Click to change"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_Orientation:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListOrient:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 141
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListOrient:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOrient:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Click to change"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    :goto_2
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_Sides:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListSides:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListSides:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mSides:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Click to change"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    :goto_3
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListCopies:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListCopies:Landroid/preference/EditTextPreference;

    const-string v3, "Printer support only 1 copy"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListNumberUp:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 136
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListNumberUp:Landroid/preference/ListPreference;

    const-string v3, "Printer support only 1 page per side"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListOrient:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListOrient:Landroid/preference/ListPreference;

    const-string v3, "Printer support only portrait"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListSides:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 153
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListSides:Landroid/preference/ListPreference;

    const-string v3, "Printer support only one-sided"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "BluetoothBppPrintPrefActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    .line 214
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 187
    const-string v0, "BluetoothBppPrintPrefActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListCopies:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_1

    .line 190
    const-string v0, "BluetoothBppPrintPrefActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListCopies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    check-cast p2, Ljava/lang/String;

    .end local p2
    sput-object p2, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mCopies:Ljava/lang/String;

    .line 206
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 193
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListNumberUp:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 194
    const-string v0, "BluetoothBppPrintPrefActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListNumberUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    check-cast p2, Ljava/lang/String;

    .end local p2
    sput-object p2, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mNumUp:Ljava/lang/String;

    goto :goto_0

    .line 197
    .restart local p2
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListOrient:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 198
    const-string v0, "BluetoothBppPrintPrefActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListOrient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    check-cast p2, Ljava/lang/String;

    .end local p2
    sput-object p2, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOrient:Ljava/lang/String;

    goto :goto_0

    .line 201
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mListSides:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 202
    const-string v0, "BluetoothBppPrintPrefActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListSides: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    check-cast p2, Ljava/lang/String;

    .end local p2
    sput-object p2, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mSides:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 167
    const-string v0, "BluetoothBppPrintPrefActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferenceScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mPrintStart:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    .line 170
    const-string v0, "BluetoothBppPrintPrefActivity"

    const-string v1, "mPrintStart: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v1, 0x10

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    sput-boolean v3, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOPPstop:Z

    .line 178
    sput-boolean v3, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mBPPstop:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->finish()V

    .line 181
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 160
    sput-object p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    .line 161
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 218
    const-string v1, "BluetoothBppPrintPrefActivity"

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 230
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v1, "BluetoothBppPrintPrefActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-boolean v1, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mBPPstop:Z

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v2, 0x14

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOPPstop:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-nez v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v2, 0x1ea

    iput v2, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 242
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->finish()V

    .line 246
    :cond_3
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 247
    return-void
.end method
