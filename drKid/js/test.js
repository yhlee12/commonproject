class youtube {
    constructor(el) {
        this.el = el;
        this.youtubeOptions = ['previous', 'next'];
        this.youtubeData = [
          {
              'id': '1',
              'src': 'http://fakeimg.pl/300/?text=1',
          },
          {
              'id': '2',
              'src': 'http://fakeimg.pl/300/?text=2',
          },
          {
              'id': '3',
              'src': 'http://fakeimg.pl/300/?text=3',
          },
        ];
        this.youtubeInView = [1, 2, 3];
        this.youtubeContainer;
        this.youtubePlayState;
    }

    mounted() {
        this.setupyoutube();
    }

    // Build youtube html
    setupyoutube() {
        const container = document.createElement('div');
        const controls = document.createElement('div');

        // Add container for youtube items and controls
        this.el.append(container, controls);
        container.className = 'youtube-container';
        controls.className = 'youtube-controls';

        // Take dataset array and append items to container
        this.youtubeData.forEach((item, index) => {
            const youtubeItem = item.src ? document.createElement('img') : document.createElement('div');

        container.append(youtubeItem);
      
        // Add item attributes
        youtubeItem.className = `youtube-item youtube-item-${index + 1}`;
        youtubeItem.src = item.src;
        youtubeItem.setAttribute('loading', 'lazy');
        // Used to keep track of youtube items, infinite items possible in youtube however min 5 items required
        youtubeItem.setAttribute('data-index', `${index + 1}`);
});

this.youtubeOptions.forEach((option) => {
    const btn = document.createElement('button');
const axSpan = document.createElement('span');

// Add accessibilty spans to button
axSpan.innerText = option;
axSpan.className = 'ax-hidden';
btn.append(axSpan);

// Add button attributes
btn.className = `youtube-control youtube-control-${option}`;
btn.setAttribute('data-name', option);

// Add youtube control options
controls.append(btn);
});

// After rendering youtube to our DOM, setup youtube controls' event listeners
this.setControls([...controls.children]);

// Set container property
this.youtubeContainer = container;
}

setControls(controls) {
    controls.forEach(control => {
        control.onclick = (event) => {
            event.preventDefault();

    // Manage control actions, update our youtube data first then with a callback update our DOM
    this.controlManager(control.dataset.name);
};
});
}

controlManager(control) {
    if (control === 'previous') return this.previous();
    if (control === 'next') return this.next();
    if (control === 'add') return this.add();
    if (control === 'play') return this.play();

    return;
}

previous() {
    // Update order of items in data array to be shown in youtube
    this.youtubeData.unshift(this.youtubeData.pop());

    // Push the first item to the end of the array so that the previous item is front and center
    this.youtubeInView.push(this.youtubeInView.shift());

    // Update the css class for each youtube item in view
    this.youtubeInView.forEach((item, index) => {
        this.youtubeContainer.children[index].className = `youtube-item youtube-item-${item}`;
});

// Using the first 5 items in data array update content of youtube items in view
this.youtubeData.slice(0, 5).forEach((data, index) => {
    document.querySelector(`.youtube-item-${index + 1}`).src = data.src;
});
}

next() {
    this.youtubeData.push(this.youtubeData.shift());
    this.youtubeInView.unshift(this.youtubeInView.pop());
    this.youtubeInView.forEach((item, index) => {
        this.youtubeContainer.children[index].className = `youtube-item youtube-item-${item}`;
});
this.youtubeData.slice(0, 5).forEach((data, index) => {
    document.querySelector(`.youtube-item-${index + 1}`).src = data.src;
});
}

}

const el = document.querySelector('.youtube');
const exampleyoutube = new youtube(el);
exampleyoutube.mounted();
