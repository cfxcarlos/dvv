 // CHORA TRIGUEIRO
 (function () {
}());
const a = {
    screen: 0,
    menu: false,
    radioFrequencies: [],
    intendedFrequency: '',
    serverName: 'TRIGUEIRO NETWORK',
    volume: 80,
    soundActive: false
};

var app = new Vue({
    el: '#app',
    template: '\n    <div v-show="menu" class="StyleMain">\n\n    <div v-if="screen == 0" class="containerRadio centralize">\n\n        <div class="radio">\n\n            <div class="screen">\n\n                <header>\n\n                    <h1>{{serverName}}</h1>\n\n                    <div class="headerIcons">\n\n                        <img src="assets/CellSignalFull.svg" alt="">\n                        <img src="assets/BatteryFull.svg" alt="">\n\n                    </div>\n\n                </header>\n\n                <div class="screenNumber centralize">\n                    <input placeholder="0" maxlength="3" min="0" v-model="intendedFrequency" onkeypress=\'app.validate(event)\' type="text">\n                </div>\n\n                <div class="soundCont displayBetween">\n                    \n                    <img src="assets/soundA.svg" alt="">\n                    \n                    <div class="sound">\n                    \n\n                        <div :style="{\'width\': volume + \'%\'}" class="soundB">\n\n                            <input v-model="volume" onchange="app.handleVolume()" type="range">\n\n                        </div>\n\n                    </div>\n\n                    <img src="assets/soundB.svg" alt="">\n                \n                </div>\n\n                <h3>rádio {{radioFrequencies.length ? \'conectada\' : \'desconectada\'}}</h3>\n\n            </div>\n\n            <div class="ContButtons centralize">\n\n\n                <img v-show="!soundActive" src="assets/Botoes.svg" alt="">\n                <img v-show="soundActive" src="assets/Botoes2.svg" alt="">\n                \n                <div class="buttonsRadio">\n                \n                    <div class="buttons">\n\n                        <div @click="connectFrequency" class="buttonSelect"></div>\n\n                        <div class="buttonSelect"></div>\n                        \n                        <div @click="handleUI(false)" class="buttonSelect"></div>\n\n                    </div>\n\n                    <div class="buttons">\n\n                        <div class="buttonSelect"></div>\n\n                    </div>\n\n                    <div class="buttons">\n\n                        <div @click="changeSound" class="buttonSelect"></div>\n\n                        <div class="buttonSelect"></div>\n                        \n                        <div @click="if(radioFrequencies.length > 0) {changeScreen(1)}" class="buttonSelect"></div>\n\n                    </div>\n               \n                </div>\n\n            </div>\n            \n        </div>\n\n\n    </div>\n\n    <div v-if="screen == 1" class="containerRadio2 centralize">\n\n        <div class="radio">\n\n            <div class="screen">\n\n                <header>\n\n                    <h1>{{serverName}}</h1>\n\n                    <div class="headerIcons">\n\n                        <img src="assets/CellSignalFull.svg" alt="">\n                        <img src="assets/BatteryFull.svg" alt="">\n\n                    </div>\n\n                </header>\n\n                <div class="containerRadioConnected">\n\n                    <div v-for="(r, index) in radioFrequencies" v-if="radioFrequencies.length > 0" class="RadioConnected">\n\n                        <div class="frequency">\n                            <p>{{r}}</p>\n                        </div>\n\n                        <div class="position">\n\n                            <img @click="changePosition(\'up\',index)" src="assets/arrowUp.svg" alt="">\n\n                            <p>{{index + 1}}º</p>\n                            \n                            <img @click="changePosition(\'down\',index)" src="assets/arrowDown.svg" alt="">\n                     \n                        </div>\n\n                        <div class="frequencyRemove">\n                            <img @click="removeFrequency(index)" src="assets/Sair.svg" alt="">\n                        </div>\n\n                        <div class="speak">\n\n                            <img v-show="index == 0" src="assets/Microphone.svg" alt="">\n                            <img v-show="index > 0" src="./assets/disconnectFrequencyIcon.svg" alt="">\n\n                        </div>\n\n                    </div>\n                    \n                </div>\n\n            </div>\n\n            <div class="ContButtons">\n\n\n                <img v-show="soundActive" src="assets/Botoes.svg" class="imgScreen2" alt="">\n                <img v-show="!soundActive" src="assets/Botoes2.svg" class="imgScreen2" alt="">\n                \n                <div class="buttonsRadio">\n                \n                    <div class="buttons">\n\n                        <div class="buttonSelect"></div>\n                        <div @click="changePosition(\'up\')" class="buttonSelect"></div>\n                        <div @click="handleUI(false)" class="buttonSelect"></div>\n\n                    </div>\n\n                    <div class="buttons">\n                        <div @click="changeScreen(0)" class="buttonSelect"></div>\n                    </div>\n\n                    <div class="buttons">\n\n                        <div @click="changeSound" class="buttonSelect"></div>\n\n                        <div @click="changePosition(\'down\')" class="buttonSelect"></div>\n                        \n                        <div class="buttonSelect"></div>\n\n                    </div>\n               \n                </div>\n\n            </div>\n            \n        </div>\n\n    </div>\n\n\n</div>\n    ',
    data: a,
    methods: {
        handleVolume() {
            const b = { volume: this.volume };
            axios.post('http://CodinRadio/handleVolume', b);
        },
        connectedFrequencyActive() {
            let c = this.connectedFrequency;
        },
        removeFrequency(d) {
            this.radioFrequencies.splice(d, 1);
            const e = { frequencys: this.radioFrequencies };
            axios.post('http://CodinRadio/atualizeFrequencys', e);
        },
        changePosition(f, g) {
            const h = { direction: f };
            axios.post('http://CodinRadio/atualizeFrequencys', h);
        },
        swipeFrequencies(i) {
            if (i == 'up') {
                let j = this.radioFrequencies.shift();
                this.radioFrequencies.push(j);
            } else {
                if (i == 'down') {
                    let k = this.radioFrequencies.pop();
                    this.radioFrequencies.unshift(k);
                }
            }
        },
        async connectFrequency() {
            let l = Number(this.intendedFrequency);
            let m = this.radioFrequencies.indexOf(l);
            if (m == -1 && this.intendedFrequency > 0) {
                const o = { frequency: l };
                let q = await axios.post('http://CodinRadio/addFrequency', o);
                if (q) {
                    let s = q.data;
                    if (s) {
                        this.radioFrequencies.unshift(l);
                        this.changeScreen(1);
                    }
                }
            }
        },
        getVolume() {
            let t = this.volume;
        },
        changeSound() {
            this.soundActive = !this.soundActive;
            const u = { mute: this.soundActive };
            axios.post('http://CodinRadio/muteSound', u);
            this.volume = 0;
        },
        disconnectFrequency() {
            this.connectedFrequency = 0;
        },
        changeScreen(w) {
            this.screen = w;
        },
        setServerName(x) {
            this.serverName = x;
        },
        handleUI(y, z) {
            // console.log('pedi para abrir', y);
            this.menu = y;
            if (y) {
                this.radioFrequencies = z;
            } else {
                axios.post('http://CodinRadio/closeUI');
            }
            this.screen = 0;
        },
        atualizeFrequency(aa) {
            this.radioFrequencies = aa;
        },
        resetCacheVolume(ab) {
            this.volume = ab;
        },
        validate(ac) {
            var ad = ac || window.event;
            if (ad.type === 'paste') {
                ae = event.clipboardData.getData('text/plain');
            } else {
                var ae = ad.keyCode || ad.which;
                ae = String.fromCharCode(ae);
            }
            var af = /[0-9]|\./;
            if (!af.test(ae)) {
                ad.returnValue = false;
                if (ad.preventDefault) {
                    ad.preventDefault();
                }
            }
        }
    },
    watch: {
        radioFrequencies(ag) {
            this.intendedFrequency = ag[0];
        }
    },
    mounted() {
        $(document).on('keydown', function (ah) {
            if (ah.keyCode === 27) {
                app.handleUI(false);
            }
        });
        window.addEventListener('message', ({data: ai}) => {
            
        });
    }
});

window.addEventListener('message', function(event) {
    if (event.data.menu !== undefined) {
        app.menu = event.data.menu;
        app.serverName = event.data.serverName;
        app.volume = event.data.volume;
    } else if (event.data.action == "pageup") {
        app.swipeFrequencies('up');
    } else if (event.data.action == "pagedown") {
        app.swipeFrequencies('down');
    } else if (event.data.frequency) {
        const frequency = Number(event.data.frequency);
        if (!app.radioFrequencies.includes(frequency)) {
            app.radioFrequencies.push(frequency);
        }
    }else if (event.data.atualizeFrequencys) {
        const frequencys = Number(event.data.atualizeFrequencys);

        app.atualizeFrequency(frequencys);
    }
});

